import 'package:weather_app/data/base/entity_mapper.dart';
import 'package:weather_app/data/repository/dto/current/current_weather_dto.dart';
import 'package:weather_app/domain/weather/current/current_weather_entity.dart';

class CurrentWeatherEntityMapper
    extends EntityMapper<CurrentWeatherEntity, CurrentWeatherDto> {
  const CurrentWeatherEntityMapper();

  @override
  CurrentWeatherEntity mapToEntity(CurrentWeatherDto dto) {
    return CurrentWeatherEntity(
        latitude: dto.latitude,
        longitude: dto.latitude,
        current: dto.current == null
            ? CurrentWeatherDetails()
            : const CurrentWeatherDetailEntityMapper()
                .mapToEntity(dto.current!));
  }
}

class CurrentWeatherDetailEntityMapper
    extends EntityMapper<CurrentWeatherDetails, CurrentWeatherDetailDto> {
  const CurrentWeatherDetailEntityMapper();

  @override
  CurrentWeatherDetails mapToEntity(CurrentWeatherDetailDto dto) {
    return CurrentWeatherDetails(
        time: dto.time,
        apparentTemperature: dto.apparentTemperature,
        weatherCode: dto.weatherCode,
        windSpeed10M: dto.windSpeed10M,
        relativeHumidity2M: dto.relativeHumidity2M,
        isDay: dto.isDay);
  }
}
