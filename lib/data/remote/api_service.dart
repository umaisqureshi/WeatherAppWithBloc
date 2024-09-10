import 'package:injectable/injectable.dart';
import 'package:weather_app/data/remote/mapper/city_dto_mapper.dart';
import 'package:weather_app/data/remote/mapper/weekly_dto_mapper.dart';
import 'package:weather_app/data/repository/dto/city_dto.dart';
import 'package:weather_app/data/repository/dto/weekly/weekly_dto.dart';
import 'package:weather_app/data/repository/weather_datasource.dart';
import 'package:weather_app/domain/city/city_request.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/domain/weather/select/selected_day_weather_request.dart';
import 'package:weather_app/domain/weather/weekly/weekly_request.dart';
import 'package:weather_app/presentation/utils/date_formatter.dart';

@Injectable(as: WeatherDataSource)
class WeatherApiService extends WeatherDataSource {
  final dio = Dio();
  final CityDtoMapper _cityDtoMapper = CityDtoMapper();
  final WeeklyWeatherDtoMapper _weeklyWeatherDtoMapper =
      WeeklyWeatherDtoMapper();
  @override
  Future<List<CityDto>> getCityByName(GetCityRequest request) async {
    final response = await dio
        .get('https://api.api-ninjas.com/v1/city?name=${request.name}?limit=5');
    return _cityDtoMapper.mapToData(response.data);
  }

  @override
  Future<WeeklyWeatherDto> getCurrentWeather(
      SelectedDayWeatherRequest request) async {
    final response = await dio.get(
        'https://api.open-meteo.com/v1/forecast?latitude=${request.lat}&longitude=${request.log}&start_date=${DateFormatter().formatDateTimeForApi(request.time)}&end_date=${DateFormatter().formatDateTimeForApi(request.time)}&daily=apparent_temperature_max,apparent_temperature_min,wind_speed_10m_max,weather_code,relative_humidity_2m_max&timezone=auto');
    return _weeklyWeatherDtoMapper.mapToData(response.data);
  }

  @override
  Future<WeeklyWeatherDto> getWeeklyWeather(
      WeeklyWeatherRequest request) async {
    final response = await dio.get(
        'https://api.open-meteo.com/v1/forecast?latitude=${request.latitude}&longitude=${request.longitude}&forecast_days=7&daily=apparent_temperature_max,apparent_temperature_min,wind_speed_10m_max,weather_code,relative_humidity_2m_max&timezone=auto');
    return _weeklyWeatherDtoMapper.mapToData(response.data);
  }
}
