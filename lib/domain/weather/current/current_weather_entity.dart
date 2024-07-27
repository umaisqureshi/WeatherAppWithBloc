import 'package:weather_app/domain/base/entity.dart';


class CurrentWeatherEntity extends Entity  {
    double? latitude;
    double? longitude;
    CurrentWeatherDetails? current;

    CurrentWeatherEntity({
        required this.latitude,
        required this.longitude,
        required this.current,
    });

}

class CurrentWeatherDetails extends Entity {
    String? time;
    double? apparentTemperature;
    double? windSpeed10M;
    int? weatherCode;
    int? isDay;
    int? relativeHumidity2M;

    CurrentWeatherDetails({
         this.time,
         this.apparentTemperature,
         this.windSpeed10M,
         this.weatherCode,
         this.isDay,
         this.relativeHumidity2M,
    });

}

