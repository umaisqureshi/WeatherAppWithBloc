part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetCurrentWeatherEvent extends HomeEvent {
  final double lat;
  final double log;
  const GetCurrentWeatherEvent({required this.lat, required this.log});
  @override
  List<Object?> get props => [lat, log];
}
