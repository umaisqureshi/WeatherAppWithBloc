import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/base/use_case_result.dart';
import 'package:weather_app/domain/city/get_city_use_case.dart';
import 'package:weather_app/domain/weather/select/selected_day_weather_request.dart';
import 'package:weather_app/domain/weather/select/get_selected_day_weather_use_case.dart';
import 'package:weather_app/domain/weather/weekly/get_weekly_weather_use_case.dart';
import 'package:weather_app/domain/weather/weekly/weekly_request.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc_data.dart';
import 'package:weather_app/presentation/module/home/model/location_model.dart';
import '../../../base/bloc/base_bloc.dart';
part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final SelectedDayWeatherUseCase _currentWeatherUseCase;
  final WeeklyWeatherUseCase _weeklyWeatherUseCase;
  final GetCitiesByQueryUseCase _citiesByQueryUseCase;
  HomeBlocData blocData = const HomeBlocData();
  HomeBloc(
      {required SelectedDayWeatherUseCase currentWeatherUseCase,
      required GetCitiesByQueryUseCase getCitiesByQueryUseCase,
      required WeeklyWeatherUseCase weeklyWeatherUseCase})
      : _currentWeatherUseCase = currentWeatherUseCase,
        _citiesByQueryUseCase = getCitiesByQueryUseCase,
        _weeklyWeatherUseCase = weeklyWeatherUseCase,
        super(HomeInitial()) {
    on<GetCurrentWeatherEvent>((event, emit) async {
      blocData = blocData.copyWith(
          selectedDate: event.time,
          locationData: LocationModel(
            city: event.city,
            latitude: event.lat,
            longitude: event.log,
          ));
      await _getCurrentWeather(event.lat, event.log, event.time, emit);
    });
    on<GetWeeklyWeatherEvent>((event, emit) async {
      await _getWeeklyWeather(event.lat, event.log, emit);
    });
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
              currentWether: data, city: blocData.locationData!.city));

          add(GetWeeklyWeatherEvent(
              lat: blocData.locationData!.latitude,
              log: blocData.locationData!.longitude));
        }, onError: (error) {
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
              weatherEntity: data, selectedDate: blocData.selectedDate!));
        }, onError: (error) {
          print(error.toString());
        }));
  }
}
