part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}class ErrorState extends HomeState {
  final String error;
   ErrorState({required this.error});
  @override
  List<Object?> get props => [];
}

class CurrentWeatherState extends HomeState {
  final WeeklyWeatherEntity currentWether;
  final String city;
  final bool isCelsius;
  CurrentWeatherState({required this.currentWether, required this.city, required this.isCelsius});
  @override
  List<Object?> get props => [currentWether];
}

class WeeklyWeatherState extends HomeState {
  final WeeklyWeatherEntity weatherEntity;
  final DateTime selectedDate;
  final bool isCelsius;

  WeeklyWeatherState({required this.weatherEntity, required this.selectedDate, required this.isCelsius});
  @override
  List<Object?> get props => [weatherEntity];
}

class NetworkSuccess extends HomeState implements ListenableState {
  @override
  List<Object?> get props => [];
}

class NetworkFailure extends HomeState {
  @override
  List<Object?> get props => [];
}
