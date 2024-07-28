import 'package:weather_app/data/base/dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weekly_dto.freezed.dart';
part 'weekly_dto.g.dart';

@freezed
class WeeklyWeatherDto with _$WeeklyWeatherDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WeeklyWeatherDto(
      {double? latitude,
      double? longitude,
      DailyDataDto? daily}) = _WeeklyWeatherDto;
  factory WeeklyWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeeklyWeatherDtoFromJson(json);
}

@freezed
class DailyDataDto with _$DailyDataDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DailyDataDto(
      {@Default([]) List<DateTime> time,
      @JsonKey(name: "apparent_temperature_max")
      @Default([])
      List<double> apparentTemperatureMax,
      @JsonKey(name: "apparent_temperature_min")
      @Default([])
      List<double> apparentTemperatureMin,
      @JsonKey(name: "wind_speed_10m_max")
      @Default([])
      List<double> windSpeed10mMax,
      @Default([]) List<int> weatherCode,
      @JsonKey(name: "relative_humidity_2m_max")
      @Default([])
      List<int> relativeHumidity2mMax}) = _DailyDataDto;
  factory DailyDataDto.fromJson(Map<String, dynamic> json) =>
      _$DailyDataDtoFromJson(json);
}
