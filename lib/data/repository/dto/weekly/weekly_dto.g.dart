// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyWeatherDtoImpl _$$WeeklyWeatherDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyWeatherDtoImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      daily: json['daily'] == null
          ? null
          : DailyDataDto.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeeklyWeatherDtoImplToJson(
        _$WeeklyWeatherDtoImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'daily': instance.daily,
    };

_$DailyDataDtoImpl _$$DailyDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$DailyDataDtoImpl(
      time: (json['time'] as List<dynamic>?)
              ?.map((e) => DateTime.parse(e as String))
              .toList() ??
          const [],
      apparentTemperatureMax:
          (json['apparent_temperature_max'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      apparentTemperatureMin:
          (json['apparent_temperature_min'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      windSpeed10mMax: (json['wind_speed_10m_max'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      weatherCode: (json['weather_code'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      relativeHumidity2mMax:
          (json['relative_humidity_2m_max'] as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$DailyDataDtoImplToJson(_$DailyDataDtoImpl instance) =>
    <String, dynamic>{
      'time': instance.time.map((e) => e.toIso8601String()).toList(),
      'apparent_temperature_max': instance.apparentTemperatureMax,
      'apparent_temperature_min': instance.apparentTemperatureMin,
      'wind_speed_10m_max': instance.windSpeed10mMax,
      'weather_code': instance.weatherCode,
      'relative_humidity_2m_max': instance.relativeHumidity2mMax,
    };
