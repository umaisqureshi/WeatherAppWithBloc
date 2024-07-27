import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/base/use_case_result.dart';
import 'package:weather_app/domain/weather/current/current_weather_request.dart';
import 'package:weather_app/domain/weather/current/get_current_weather.dart';
import '../../../base/bloc/base_bloc.dart';
part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final CurrentWeatherUseCase _currentWeatherUseCase;
  HomeBloc({required CurrentWeatherUseCase currentWeatherUseCase})
      : _currentWeatherUseCase = currentWeatherUseCase,
        super(HomeInitial()) {
    on<GetCurrentWeatherEvent>((event, emit) async {
      await _getCurrentWeather(event.lat, event.log, emit);
    });
  }

  _getCurrentWeather(double lat, double log, Emitter<HomeState> emit) {
    final CurrentWeatherRequest request =
        CurrentWeatherRequest(lat: lat, log: log);
    return _currentWeatherUseCase.perform(
        request,
        UseCaseResult(onSuccess: (data) {
          print(data.current?.apparentTemperature.toString());
        }, onError: (error) {
          print(error.toString());
        }));
  }
}
