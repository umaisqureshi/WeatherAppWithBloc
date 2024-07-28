import 'package:weather_app/data/repository/dto/weekly/weekly_dto.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';

import '../../base/entity_mapper.dart';

class WeeklyWeatherEntityMapper
    extends EntityMapper<WeeklyWeatherEntity, WeeklyWeatherDto> {
  const WeeklyWeatherEntityMapper();

  @override
  WeeklyWeatherEntity mapToEntity(WeeklyWeatherDto dto) {
    return WeeklyWeatherEntity(
        latitude: dto.latitude!,
        longitude: dto.latitude!,
        daily: mapDailyDataDtoToModel(dto.daily!));
  }
}

List<DailyData> mapDailyDataDtoToModel(DailyDataDto dto) {
  final List<DailyData> dailyData = [];

  for (int i = 0; i < dto.time.length; i++) {
    dailyData.add(
      DailyData(
        time: dto.time[i].toIso8601String(), // Convert DateTime to String
        apparentTemperatureMax: dto.apparentTemperatureMax.isEmpty
            ? null
            : dto.apparentTemperatureMax[i],
        apparentTemperatureMin: dto.apparentTemperatureMin.isEmpty
            ? null
            : dto.apparentTemperatureMin[i],
        windSpeed10mMax:
            dto.windSpeed10mMax.isEmpty ? null : dto.windSpeed10mMax[i],
        weatherCode: dto.weatherCode.isEmpty ? null : dto.weatherCode[i],
        relativeHumidity2mMax: dto.relativeHumidity2mMax.isEmpty
            ? null
            : dto.relativeHumidity2mMax[i],
      ),
    );
  }

  return dailyData;
}
