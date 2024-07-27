import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/presentation/module/splash/splash.dart';
import '../../../presentation/module/splash/bloc/splash_bloc.dart';
import '../route_screen_provider.dart';

@injectable
class SplashRouteProvider extends RouteScreenProvider<SplashBloc> {
  SplashRouteProvider({required super.bloc});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SplashScreen(bloc: bloc);
  }
}
