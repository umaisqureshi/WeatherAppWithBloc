part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class CurrentWeatherState extends HomeState {
  final WeeklyWeatherEntity currentWether;
  final String city;
  CurrentWeatherState({required this.currentWether, required this.city});
  @override
  List<Object?> get props => [currentWether];
}

class WeeklyWeatherState extends HomeState {
  final WeeklyWeatherEntity weatherEntity;
  final DateTime selectedDate;
  WeeklyWeatherState({required this.weatherEntity, required this.selectedDate});
  @override
  List<Object?> get props => [weatherEntity];
}
