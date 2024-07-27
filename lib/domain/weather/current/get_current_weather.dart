import 'package:injectable/injectable.dart';
import 'package:weather_app/data/repository/weather_repo.dart';
import 'package:weather_app/domain/base/usecase/single_usecase.dart';
import 'package:weather_app/domain/weather/current/current_weather_entity.dart';
import 'package:weather_app/domain/weather/current/current_weather_request.dart';

@injectable
class CurrentWeatherUseCase
    extends SingleUseCase<CurrentWeatherRequest, CurrentWeatherEntity> {
  final WeatherRepository _repository;
  const CurrentWeatherUseCase({required WeatherRepository repository})
      : _repository = repository;
  @override
  Future<CurrentWeatherEntity> task(CurrentWeatherRequest request) {
    return _repository.getCurrentWeather(request);
  }
}
