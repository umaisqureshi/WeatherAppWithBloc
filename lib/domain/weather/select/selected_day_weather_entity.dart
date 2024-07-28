import 'package:weather_app/domain/base/entity.dart';

class SelectedDayWeatherEntity extends Entity {
  double? latitude;
  double? longitude;
  SelectedDayWeatherDetails? current;

  SelectedDayWeatherEntity({
    required this.latitude,
    required this.longitude,
    required this.current,
  });
}

class SelectedDayWeatherDetails extends Entity {
  String? time;
  double? apparentTemperature;
  double? windSpeed10M;
  int? weatherCode;
  int? isDay;
  int? relativeHumidity2M;

  SelectedDayWeatherDetails({
    this.time,
    this.apparentTemperature,
    this.windSpeed10M,
    this.weatherCode,
    this.isDay,
    this.relativeHumidity2M,
  });
}
