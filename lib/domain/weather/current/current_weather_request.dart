import 'package:weather_app/domain/base/request.dart';

class CurrentWeatherRequest extends Request {
  final double lat;
  final double log;
  const CurrentWeatherRequest({required this.lat, required this.log});
}
