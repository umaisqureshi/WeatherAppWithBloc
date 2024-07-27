// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherDtoImpl _$$CurrentWeatherDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherDtoImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      current: json['current'] == null
          ? null
          : CurrentWeatherDetailDto.fromJson(
              json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentWeatherDtoImplToJson(
        _$CurrentWeatherDtoImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current': instance.current,
    };

_$CurrentWeatherDetailDtoImpl _$$CurrentWeatherDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherDetailDtoImpl(
      time: json['time'] as String?,
      apparentTemperature: (json['apparent_temperature'] as num?)?.toDouble(),
      windSpeed10M: (json['wind_speed10_m'] as num?)?.toDouble(),
      weatherCode: (json['weather_code'] as num?)?.toInt(),
      isDay: (json['is_day'] as num?)?.toInt(),
      relativeHumidity2M: (json['relative_humidity2_m'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CurrentWeatherDetailDtoImplToJson(
        _$CurrentWeatherDetailDtoImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'apparent_temperature': instance.apparentTemperature,
      'wind_speed10_m': instance.windSpeed10M,
      'weather_code': instance.weatherCode,
      'is_day': instance.isDay,
      'relative_humidity2_m': instance.relativeHumidity2M,
    };
