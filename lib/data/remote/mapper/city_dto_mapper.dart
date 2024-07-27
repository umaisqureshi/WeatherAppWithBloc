import 'package:weather_app/data/remote/dto_mapper.dart';
import 'package:weather_app/data/repository/dto/city_dto.dart';

class CityDtoMapper extends ListDtoMapper<CityDto> {
  @override
  CityDto mapDtoToData(Map<String, dynamic> result) {
    return CityDto.fromJson(result);
  }
}
