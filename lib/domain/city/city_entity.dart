import 'package:weather_app/domain/base/entity.dart';

class CityEntity implements Entity{
  String name;
  String country;

  CityEntity({
    required this.name,
    required this.country,
  });
}
