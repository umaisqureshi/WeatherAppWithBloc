import 'package:injectable/injectable.dart';
import 'package:weather_app/data/remote/mapper/city_dto_mapper.dart';
import 'package:weather_app/data/repository/dto/city_dto.dart';
import 'package:weather_app/data/repository/weather_datasource.dart';
import 'package:weather_app/domain/city/city_request.dart';
import 'package:dio/dio.dart';

@Injectable(as: WeatherDataSource)
class WeatherApiService extends WeatherDataSource {
  final dio = Dio();
  final CityDtoMapper _cityDtoMapper = CityDtoMapper();

  @override
  Future<List<CityDto>> getCityByName(GetCityRequest request) async {
    final response = await dio
        .get('https://api.api-ninjas.com/v1/city?name=${request.name}?limit=5');
    return _cityDtoMapper.mapToData(response);
  }
}
