import 'package:weather_app/domain/base/entity.dart';

class WeeklyWeatherEntity extends Entity {
  final double latitude;
  final double longitude;
  final List<DailyData> daily;

  WeeklyWeatherEntity({
    required this.latitude,
    required this.longitude,
    required this.daily,
  });

  factory WeeklyWeatherEntity.fromJson(Map<String, dynamic> json) {
    final dailyData = (json['daily'] as Map<String, dynamic>).values.toList();
    return WeeklyWeatherEntity(
      latitude: json['latitude'],
      longitude: json['longitude'],
      daily: dailyData.map((data) => DailyData.fromJson(data)).toList(),
    );
  }
}

class DailyData extends Entity {
  final String? time;
  final double? apparentTemperatureMax;
  final double? apparentTemperatureMin;
  final double? windSpeed10mMax;
  final int? weatherCode;
  final int? relativeHumidity2mMax;
  final bool isSelected;

  DailyData({
    this.time,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
    this.isSelected = false,
    this.windSpeed10mMax,
    this.weatherCode,
    this.relativeHumidity2mMax,
  });

  factory DailyData.fromJson(Map<String, dynamic> json) {
    return DailyData(
      time: json['time'],
      apparentTemperatureMax: json['apparent_temperature_max'],
      apparentTemperatureMin: json['apparent_temperature_min'],
      windSpeed10mMax: json['wind_speed_10m_max'],
      weatherCode: json['weather_code'],
      relativeHumidity2mMax: json['relative_humidity_2m_max'],
    );
  }
}
