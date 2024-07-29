import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/city/get_city_use_case.dart';
import 'package:weather_app/domain/weather/select/get_selected_day_weather_use_case.dart';
import 'package:weather_app/domain/weather/weekly/get_weekly_weather_use_case.dart';
import 'package:weather_app/presentation/module/home/home.dart';
import '../../presentation/module/home/bloc/home_bloc.dart';
import '../routing/route_screen_provider.dart';

@injectable
class HomeRouteProvider extends RouteScreenProvider<HomeBloc> {
  final SelectedDayWeatherUseCase _currentWeatherUseCase;
  final WeeklyWeatherUseCase _weeklyWeatherUseCase;
  final GetCitiesByQueryUseCase _citiesByQueryUseCase;

  HomeRouteProvider(
      {required super.bloc,
      required SelectedDayWeatherUseCase currentWeatherUseCase,
      required GetCitiesByQueryUseCase getCitiesByQueryUseCase,
      required WeeklyWeatherUseCase weeklyWeatherUseCase})
      : _currentWeatherUseCase = currentWeatherUseCase,
        _citiesByQueryUseCase = getCitiesByQueryUseCase,
        _weeklyWeatherUseCase = weeklyWeatherUseCase;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (context) {
            final bloc = HomeBloc(
                getCitiesByQueryUseCase: _citiesByQueryUseCase,
                weeklyWeatherUseCase: _weeklyWeatherUseCase,
                currentWeatherUseCase: _currentWeatherUseCase);
            bloc.updateExtra(state.extra);
            return bloc;
          },
        ),

      ],
      child: const HomeScreen(),
    );
  }
}
