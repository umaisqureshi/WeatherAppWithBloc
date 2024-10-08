part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetCurrentWeatherEvent extends HomeEvent {
  final double lat;
  final double log;
  final String city;
  final DateTime time;
  const GetCurrentWeatherEvent(
      {required this.lat,
      required this.log,
      required this.city,
      required this.time});
  @override
  List<Object?> get props => [lat, log];
}

class GetCurrentLocationEvent extends HomeEvent {
  final DateTime time;
  const GetCurrentLocationEvent({required this.time});
  @override
  List<Object?> get props => [time];
}

class GetWeeklyWeatherEvent extends HomeEvent {
  final double lat;
  final double log;
  const GetWeeklyWeatherEvent({required this.lat, required this.log});
  @override
  List<Object?> get props => [lat, log];
}

class GetSelectedDayEvent extends HomeEvent {
  final DailyData selectedDay;
  const GetSelectedDayEvent({required this.selectedDay});
  @override
  List<Object?> get props => [selectedDay];
}

class RefreshWeatherEvent extends HomeEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class ConvertWeatherEvent extends HomeEvent {
  final bool isCelsius;
  const ConvertWeatherEvent({required this.isCelsius});
  @override
  List<Object?> get props => [isCelsius];
}

class NetworkObserve extends HomeEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class NetworkNotify extends HomeEvent {
  final bool isConnected;

  const NetworkNotify({this.isConnected = false});
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}
