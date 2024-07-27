import 'package:weather_app/domain/city/city_request.dart';

import 'dto/city_dto.dart';

abstract class WeatherDataSource {
  Future<List<CityDto>> getCityByName(GetCityRequest request);
}
