import 'package:injectable/injectable.dart';
import 'package:weather_app/data/repository/weather_repo.dart';
import 'package:weather_app/domain/base/usecase/single_usecase.dart';
import 'package:weather_app/domain/weather/select/selected_day_weather_request.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';

@injectable
class SelectedDayWeatherUseCase
    extends SingleUseCase<SelectedDayWeatherRequest, WeeklyWeatherEntity> {
  final WeatherRepository _repository;
  const SelectedDayWeatherUseCase({required WeatherRepository repository})
      : _repository = repository;
  @override
  Future<WeeklyWeatherEntity> task(SelectedDayWeatherRequest request) {
    return _repository.getCurrentWeather(request);
  }
}
