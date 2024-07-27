import 'package:weather_app/data/remote/dto_mapper.dart';
import 'package:weather_app/data/repository/dto/current/current_weather_dto.dart';

class CurrentWeatherDtoMapper extends DtoMapper<CurrentWeatherDto> {
  @override
  CurrentWeatherDto mapDtoToData(Map<String, dynamic> result) {
    return CurrentWeatherDto.fromJson(result);
  }
}
