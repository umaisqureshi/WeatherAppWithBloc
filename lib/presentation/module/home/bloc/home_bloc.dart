import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/base/use_case_result.dart';
import 'package:weather_app/domain/city/get_city_use_case.dart';
import 'package:weather_app/domain/location/get_current_location_use_case.dart';
import 'package:weather_app/domain/weather/select/selected_day_weather_request.dart';
import 'package:weather_app/domain/weather/select/get_selected_day_weather_use_case.dart';
import 'package:weather_app/domain/weather/weekly/get_weekly_weather_use_case.dart';
import 'package:weather_app/domain/weather/weekly/weekly_request.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
import 'package:weather_app/presentation/base/state/listenable_state.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc_data.dart';
import 'package:weather_app/presentation/module/home/bloc/service/network_bloc_service.dart';
import 'package:weather_app/presentation/module/home/model/location_model.dart';
import 'package:weather_app/presentation/utils/temp_convertor.dart';
import '../../../base/bloc/base_bloc.dart';
part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final SelectedDayWeatherUseCase _currentWeatherUseCase;
  final WeeklyWeatherUseCase _weeklyWeatherUseCase;
  //Future feature
  // ignore: unused_field
  final GetCitiesByQueryUseCase _citiesByQueryUseCase;
  final GetUserCurrentLocationUseCase _currentLocationUseCase;
  late NetworkBlocService _networkBlocService;
  HomeBlocData blocData = const HomeBlocData();
  HomeBloc(
      {required SelectedDayWeatherUseCase currentWeatherUseCase,
      required GetUserCurrentLocationUseCase currentLocationUseCase,
      required GetCitiesByQueryUseCase getCitiesByQueryUseCase,
      required WeeklyWeatherUseCase weeklyWeatherUseCase})
      : _currentWeatherUseCase = currentWeatherUseCase,
        _citiesByQueryUseCase = getCitiesByQueryUseCase,
        _currentLocationUseCase = currentLocationUseCase,
        _weeklyWeatherUseCase = weeklyWeatherUseCase,
        super(HomeInitial()) {
    _initNetworkService();
    on<GetCurrentWeatherEvent>((event, emit) async {
      await _getCurrentWeather(event.lat, event.log, event.time, emit);
    });
    on<GetWeeklyWeatherEvent>((event, emit) async {
      await _getWeeklyWeather(event.lat, event.log, emit);
    });
    on<GetCurrentLocationEvent>((event, emit) async {
      await _getCurrentLocation(event.time, emit);
    });
    on<GetSelectedDayEvent>((event, emit) async {
      await _getSelectedDayData(event.selectedDay, emit);
    });

    on<ConvertWeatherEvent>((event, emit) async {
      await _convertWeatherScale(event.isCelsius, emit);
    });
    on<RefreshWeatherEvent>((event, emit) async {
      blocData = blocData.copyWith(currentScaleIsCelsius: true);
      add(GetCurrentWeatherEvent(
          lat: blocData.locationData!.latitude,
          log: blocData.locationData!.longitude,
          city: blocData.locationData!.city,
          time: DateTime.now()));
    });
    on<NetworkObserve>(_networkBlocService.observe);
    on<NetworkNotify>(_networkBlocService.notifyStatus);
  }

//Methods
  _getCurrentWeather(
      double lat, double log, DateTime time, Emitter<HomeState> emit) async {
    final SelectedDayWeatherRequest request =
        SelectedDayWeatherRequest(lat: lat, log: log, time: time);
    return _currentWeatherUseCase.perform(
        request,
        UseCaseResult(onSuccess: (data) {
          blocData = blocData.copyWith(currentWeatherData: data);
          emit(CurrentWeatherState(
              isCelsius: blocData.currentScaleIsCelsius,
              currentWether: data,
              city: weatherCodeMap[data.daily[0].weatherCode]!));

          add(GetWeeklyWeatherEvent(
              lat: blocData.locationData!.latitude,
              log: blocData.locationData!.longitude));
        }, onError: (error) {
          emit(ErrorState(error: error.toString()));
          print(error.toString());
        }));
  }

  _getWeeklyWeather(double lat, double log, Emitter<HomeState> emit) async {
    final WeeklyWeatherRequest request =
        WeeklyWeatherRequest(latitude: lat, longitude: log);
    return _weeklyWeatherUseCase.perform(
        request,
        UseCaseResult(onSuccess: (data) {
          blocData = blocData.copyWith(weeklyData: data);
          emit(WeeklyWeatherState(
              isCelsius: blocData.currentScaleIsCelsius,
              weatherEntity: data,
              selectedDate: blocData.selectedDate!));
        }, onError: (error) {
          print(error.toString());
        }));
  }

  _getCurrentLocation(DateTime time, Emitter<HomeState> emit) async {
    return _currentLocationUseCase.perform(UseCaseResult(onSuccess: (data) {
      blocData = blocData.copyWith(
          selectedDate: time,
          locationData: LocationModel(
            city: data.city,
            latitude: data.latitude,
            longitude: data.longitude,
          ));
      add(GetCurrentWeatherEvent(
          lat: data.latitude,
          log: data.longitude,
          city: data.city,
          time: time));
    }, onError: (error) {
      print(error.toString());
    }));
  }

  _getSelectedDayData(DailyData selectedDay, Emitter<HomeState> emit) async {
    List<DailyData> tempData = [selectedDay];
    blocData = blocData.copyWith(
        selectedDate: DateTime.parse(selectedDay.time!),
        currentWeatherData: blocData.currentWeatherData!.copyWith(
          daily: tempData,
        ));
    emit(CurrentWeatherState(
        isCelsius: blocData.currentScaleIsCelsius,
        currentWether: blocData.currentWeatherData!,
        city: weatherCodeMap[
            blocData.currentWeatherData!.daily[0].weatherCode]!));
    emit(WeeklyWeatherState(
        isCelsius: blocData.currentScaleIsCelsius,
        weatherEntity: blocData.weeklyData!,
        selectedDate: blocData.selectedDate!));
  }

  _convertWeatherScale(bool isCelsius, Emitter<HomeState> emit) async {
    List<DailyData> currentDay = [
      blocData.currentWeatherData!.daily[0].copyWith(
          apparentTemperatureMax: TemperatureConvertor().convertTemperature(
              blocData.currentWeatherData!.daily[0].apparentTemperatureMax!,
              isCelsius))
    ];

    List<DailyData> weekDays = blocData.weeklyData!.daily;
    for (int i = 0; i < weekDays.length; i++) {
      weekDays[i].apparentTemperatureMax = TemperatureConvertor()
          .convertTemperature(weekDays[i].apparentTemperatureMax!, isCelsius);
      weekDays[i].apparentTemperatureMin = TemperatureConvertor()
          .convertTemperature(weekDays[i].apparentTemperatureMin!, isCelsius);
    }

    blocData = blocData.copyWith(
      currentScaleIsCelsius: isCelsius,
      currentWeatherData:
          blocData.currentWeatherData!.copyWith(daily: currentDay),
      weeklyData: blocData.weeklyData!.copyWith(daily: weekDays),
    );
    emit(CurrentWeatherState(
        isCelsius: blocData.currentScaleIsCelsius,
        currentWether: blocData.currentWeatherData!,
        city: weatherCodeMap[
            blocData.currentWeatherData!.daily[0].weatherCode]!));
    emit(WeeklyWeatherState(
        isCelsius: blocData.currentScaleIsCelsius,
        weatherEntity: blocData.weeklyData!,
        selectedDate: blocData.selectedDate!));
  }

  _initNetworkService() {
    _networkBlocService = NetworkBlocService(bloc: this);
  }

  Map<int, String> weatherCodeMap = {
    0: 'Clear sky',
    1: 'Variable',
    2: 'Variable',
    3: 'Variable',
    45: 'Rime fog',
    48: 'Rime fog',
    51: 'Drizzle',
    53: 'Drizzle',
    55: 'Drizzle',
    56: 'Freezing Drizzle',
    57: 'Freezing Drizzle',
    61: 'Rain',
    63: 'Rain',
    65: 'Rain',
    66: 'Freezing Rain',
    67: 'Freezing Rain',
    71: 'Snow fall',
    75: 'Snow fall',
    73: 'Snow fall',
    77: 'Snow grains',
    80: 'Rain showers',
    81: 'Rain showers',
    82: 'Rain showers',
    85: 'Snow showers',
    86: 'Snow showers',
    95: 'Thunderstorm',
    96: 'Thunderstorm',
    99: 'Thunderstorm',
  };
}
