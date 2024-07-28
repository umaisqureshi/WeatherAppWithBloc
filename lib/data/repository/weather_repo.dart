import 'package:injectable/injectable.dart';
import 'package:weather_app/data/repository/mapper/city_entity_mapper.dart';
import 'package:weather_app/data/repository/mapper/weekly_entity_mapper.dart';
import 'package:weather_app/data/repository/weather_datasource.dart';
import 'package:weather_app/domain/city/city_entity.dart';
import 'package:weather_app/domain/city/city_request.dart';
import 'package:weather_app/domain/weather/select/selected_day_weather_request.dart';
import 'package:weather_app/domain/weather/weekly/weekly_request.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';

@injectable
class WeatherRepository {
  final WeatherDataSource _weatherDataSource;
  final CityEntityMapper _cityEntityMapper = const CityEntityMapper();
  final WeeklyWeatherEntityMapper _weeklyWeatherEntityMapper =
      const WeeklyWeatherEntityMapper();

  const WeatherRepository({required WeatherDataSource weatherDataSource})
      : _weatherDataSource = weatherDataSource;

  Future<List<CityEntity>> getCitiesByQuery(GetCityRequest request) {
    return _weatherDataSource.getCityByName(request).then((value) {
      return value.map((e) {
        return _cityEntityMapper.mapToEntity(e);
      }).toList();
    });
  }

  Future<WeeklyWeatherEntity> getCurrentWeather(
     SelectedDayWeatherRequest request) {
    return _weatherDataSource.getCurrentWeather(request).then((e) {
      return _weeklyWeatherEntityMapper.mapToEntity(e);
    });
  }

  Future<WeeklyWeatherEntity> getWeeklyWeather(WeeklyWeatherRequest request) {
    return _weatherDataSource.getWeeklyWeather(request).then((e) {
      return _weeklyWeatherEntityMapper.mapToEntity(e);
    });
  }
}
