import 'package:weather_app/data/base/entity_mapper.dart';
import 'package:weather_app/data/repository/dto/city_dto.dart';
import 'package:weather_app/domain/city/city_entity.dart';

class CityEntityMapper extends EntityMapper<CityEntity, CityDto> {
  const CityEntityMapper();

  @override
  CityEntity mapToEntity(CityDto dto) {
    return CityEntity(name: dto.name ?? "", country: dto.country ?? "");
  }
}
