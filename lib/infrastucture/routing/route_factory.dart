import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/infrastucture/provider/splash_route_provider.dart';
import 'package:weather_app/infrastucture/routing/transition_factory.dart';
import 'package:weather_app/presentation/routes/routes.dart';
import 'route_screen_provider.dart';

@lazySingleton
class AppRouteFactory {
  final TransitionFactory transitionFactory;
  final HomeRouteProvider splashRouteProvider;
  const AppRouteFactory({
    required this.splashRouteProvider,
    required this.transitionFactory,
  });

  Widget create(BuildContext context, GoRouterState state) {
    final String path = state.path ?? Routes.splash;
    final RouteScreenProvider provider;

    if (path == Routes.splash) {
      provider = splashRouteProvider;
    } else {
      throw "invalid route, please prepare NOT FOUND page for this state";
    }
    return provider.buildRoute(context, state);
  }

  Page createPage(BuildContext context, GoRouterState state) {
    return transitionFactory.create(create(context, state), state);
  }
}
