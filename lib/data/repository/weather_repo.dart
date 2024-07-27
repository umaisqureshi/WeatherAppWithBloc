import 'package:injectable/injectable.dart';
import 'package:weather_app/data/repository/mapper/city_entity_mapper.dart';
import 'package:weather_app/data/repository/mapper/current_weather_entity_mapper.dart';
import 'package:weather_app/data/repository/weather_datasource.dart';
import 'package:weather_app/domain/city/city_entity.dart';
import 'package:weather_app/domain/city/city_request.dart';
import 'package:weather_app/domain/weather/current/current_weather_entity.dart';
import 'package:weather_app/domain/weather/current/current_weather_request.dart';

@injectable
class WeatherRepository {
  final WeatherDataSource _weatherDataSource;
  final CityEntityMapper _cityEntityMapper = const CityEntityMapper();
  final CurrentWeatherEntityMapper _currentWeatherEntityMapper =
      const CurrentWeatherEntityMapper();
  const WeatherRepository({required WeatherDataSource weatherDataSource})
      : _weatherDataSource = weatherDataSource;

  Future<List<CityEntity>> getCitiesByQuery(GetCityRequest request) {
    return _weatherDataSource.getCityByName(request).then((value) {
      return value.map((e) {
        return _cityEntityMapper.mapToEntity(e);
      }).toList();
    });
  }

  Future<CurrentWeatherEntity> getCurrentWeather(
      CurrentWeatherRequest request) {
    return _weatherDataSource.getCurrentWeather(request).then((e) {
      return _currentWeatherEntityMapper.mapToEntity(e);
    });
  }
}
