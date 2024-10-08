import 'package:weather_app/data/repository/dto/weekly/weekly_dto.dart';
import 'package:weather_app/domain/city/city_request.dart';
import 'package:weather_app/domain/weather/select/selected_day_weather_request.dart';
import 'package:weather_app/domain/weather/weekly/weekly_request.dart';

import 'dto/city_dto.dart';

abstract class WeatherDataSource {
  Future<List<CityDto>> getCityByName(GetCityRequest request);
  Future<WeeklyWeatherDto> getCurrentWeather(SelectedDayWeatherRequest request);
  Future<WeeklyWeatherDto> getWeeklyWeather(WeeklyWeatherRequest request);
}
