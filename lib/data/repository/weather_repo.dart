import 'package:injectable/injectable.dart';
import 'package:weather_app/data/repository/mapper/city_entity_mapper.dart';
import 'package:weather_app/data/repository/weather_datasource.dart';
import 'package:weather_app/domain/city/city_entity.dart';
import 'package:weather_app/domain/city/city_request.dart';

@injectable
class WeatherRepository {
  final WeatherDataSource _weatherDataSource;
  final CityEntityMapper _cityEntityMapper = const CityEntityMapper();
  const WeatherRepository({required WeatherDataSource weatherDataSource})
      : _weatherDataSource = weatherDataSource;

  Future<List<CityEntity>> getCitiesByQuery(GetCityRequest request) {
    return _weatherDataSource.getCityByName(request).then((value) {
      return value.map((e) {
        return _cityEntityMapper.mapToEntity(e);
      }).toList();
    });
  }
}
