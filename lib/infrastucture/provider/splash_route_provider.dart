import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/presentation/module/home/home.dart';
import '../../presentation/module/home/bloc/home_bloc.dart';
import '../routing/route_screen_provider.dart';

@injectable
class HomeRouteProvider extends RouteScreenProvider<HomeBloc> {
  HomeRouteProvider({required super.bloc});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) {
        final bloc = HomeBloc();
        bloc.updateExtra(state.extra);
        return bloc;
      },
      child: const HomeScreen(),
    );
  }
}
