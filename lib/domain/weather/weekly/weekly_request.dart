import 'package:weather_app/domain/base/request.dart';

class WeeklyWeatherRequest extends Request {
  final double latitude;
  final double longitude;
  const WeeklyWeatherRequest({required this.latitude, required this.longitude});
}
