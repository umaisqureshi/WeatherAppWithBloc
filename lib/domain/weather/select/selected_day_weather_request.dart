import 'package:weather_app/domain/base/request.dart';

class SelectedDayWeatherRequest extends Request {
  final double lat;
  final double log;
  final DateTime time;
  const SelectedDayWeatherRequest(
      {required this.lat, required this.log, required this.time});
}
