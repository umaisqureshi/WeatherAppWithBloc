import 'package:weather_app/data/base/dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'current_weather_dto.freezed.dart';
part 'current_weather_dto.g.dart';

@freezed
class CurrentWeatherDto with _$CurrentWeatherDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CurrentWeatherDto(
      {
      double? latitude,
      double? longitude,
      CurrentWeatherDetailDto? current
  }) = _CurrentWeatherDto;
  factory CurrentWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDtoFromJson(json);
}
@freezed
class CurrentWeatherDetailDto with _$CurrentWeatherDetailDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.snake)

  const factory CurrentWeatherDetailDto(
      {String? time,
      double? apparentTemperature,
      double? windSpeed10M,
      int? weatherCode,
      int? isDay,
      int? relativeHumidity2M}) = _CurrentWeatherDetailDto;
  factory CurrentWeatherDetailDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDetailDtoFromJson(json);
}