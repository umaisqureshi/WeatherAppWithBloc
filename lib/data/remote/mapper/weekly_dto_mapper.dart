import 'package:weather_app/data/remote/dto_mapper.dart';
import 'package:weather_app/data/repository/dto/weekly/weekly_dto.dart';

class WeeklyWeatherDtoMapper extends DtoMapper<WeeklyWeatherDto> {
  @override
  WeeklyWeatherDto mapDtoToData(Map<String, dynamic> result) {
    return WeeklyWeatherDto.fromJson(result);
  }
}
