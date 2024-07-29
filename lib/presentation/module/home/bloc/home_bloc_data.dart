import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
import 'package:weather_app/presentation/module/home/model/location_model.dart';
part 'home_bloc_data.freezed.dart';

@freezed
class HomeBlocData with _$HomeBlocData {
  const factory HomeBlocData(
      {WeeklyWeatherEntity? weeklyData,
      LocationModel? locationData,
      DateTime? selectedDate,
      @Default(true)  bool currentScaleIsCelsius,
      WeeklyWeatherEntity? currentWeatherData}) = _HomeBlocData;
}
