part of 'splash_bloc.dart';


@immutable
abstract class SplashEvent {
  const SplashEvent();
}

class NavigateToHomeEvent extends SplashEvent {}
