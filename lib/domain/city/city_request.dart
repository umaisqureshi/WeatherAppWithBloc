import 'package:weather_app/domain/base/request.dart';

class GetCityRequest extends Request {
  final String name;
  const GetCityRequest({required this.name});
}
