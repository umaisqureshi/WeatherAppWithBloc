part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class CurrentWeatherState extends HomeState {
  final CurrentWeatherEntity currentWether;
  final String city;
  CurrentWeatherState({required this.currentWether, required this.city});
  @override
  List<Object?> get props => [currentWether];
}
