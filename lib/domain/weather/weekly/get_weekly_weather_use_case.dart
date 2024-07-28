import 'package:injectable/injectable.dart';
import 'package:weather_app/data/repository/weather_repo.dart';
import 'package:weather_app/domain/base/usecase/single_usecase.dart';
import 'package:weather_app/domain/weather/weekly/weekly_request.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';

@injectable
class WeeklyWeatherUseCase
    extends SingleUseCase<WeeklyWeatherRequest, WeeklyWeatherEntity> {
  final WeatherRepository _repository;
  const WeeklyWeatherUseCase({required WeatherRepository repository})
      : _repository = repository;
  @override
  Future<WeeklyWeatherEntity> task(WeeklyWeatherRequest request) {
    return _repository.getWeeklyWeather(request);
  }
}
