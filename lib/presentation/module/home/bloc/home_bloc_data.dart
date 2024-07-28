import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/weather/current/current_weather_entity.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
part 'home_bloc_data.freezed.dart';

@freezed
class HomeBlocData with _$HomeBlocData {
  const factory HomeBlocData(
      {WeeklyWeatherEntity? weeklyData,
      CurrentWeatherEntity? currentWeatherData}) = _HomeBlocData;
}
