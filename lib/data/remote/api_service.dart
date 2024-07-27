import 'package:injectable/injectable.dart';
import 'package:weather_app/data/remote/mapper/city_dto_mapper.dart';
import 'package:weather_app/data/repository/dto/city_dto.dart';
import 'package:weather_app/data/repository/dto/current/current_weather_dto.dart';
import 'package:weather_app/data/repository/weather_datasource.dart';
import 'package:weather_app/domain/city/city_request.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/domain/weather/current/current_weather_request.dart';

import 'mapper/current_weather_dto_mapper.dart';

@Injectable(as: WeatherDataSource)
class WeatherApiService extends WeatherDataSource {
  final dio = Dio();
  final CityDtoMapper _cityDtoMapper = CityDtoMapper();
  final CurrentWeatherDtoMapper _currentWeatherDtoMapper =
      CurrentWeatherDtoMapper();
  @override
  Future<List<CityDto>> getCityByName(GetCityRequest request) async {
    final response = await dio
        .get('https://api.api-ninjas.com/v1/city?name=${request.name}?limit=5');
    return _cityDtoMapper.mapToData(response.data);
  }

  @override
  Future<CurrentWeatherDto> getCurrentWeather(
      CurrentWeatherRequest request) async {
    final response = await dio.get(
        'https://api.open-meteo.com/v1/forecast?latitude=${request.lat}&longitude=${request.log}&current=apparent_temperature,wind_speed_10m,weather_code,is_day,relative_humidity_2m');
    return _currentWeatherDtoMapper.mapToData(response.data);
  }
}
