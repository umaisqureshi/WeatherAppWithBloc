import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/weather/current/get_current_weather_use_case.dart';
import 'package:weather_app/domain/weather/weekly/get_weekly_weather_use_case.dart';
import 'package:weather_app/presentation/module/home/home.dart';
import '../../presentation/module/home/bloc/home_bloc.dart';
import '../routing/route_screen_provider.dart';

@injectable
class HomeRouteProvider extends RouteScreenProvider<HomeBloc> {
  final CurrentWeatherUseCase _currentWeatherUseCase;
  final WeeklyWeatherUseCase _weeklyWeatherUseCase;

  HomeRouteProvider(
      {required super.bloc,
      required CurrentWeatherUseCase currentWeatherUseCase,
      required WeeklyWeatherUseCase weeklyWeatherUseCase})
      : _currentWeatherUseCase = currentWeatherUseCase,
        _weeklyWeatherUseCase = weeklyWeatherUseCase;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) {
        final bloc = HomeBloc(
            weeklyWeatherUseCase: _weeklyWeatherUseCase,
            currentWeatherUseCase: _currentWeatherUseCase);
        bloc.updateExtra(state.extra);
        return bloc;
      },
      child: const HomeScreen(),
    );
  }
}
