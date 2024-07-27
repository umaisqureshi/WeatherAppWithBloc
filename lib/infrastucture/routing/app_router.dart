import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/presentation/routes/routes.dart';
import 'route_factory.dart';

@lazySingleton
class AppRouter {
  final AppRouteFactory routeFactory;
  GoRouter? _goRouter;

  AppRouter({required this.routeFactory});

  GoRouter generateRoutes() {
    final GoRouter goRouter;
    if (_goRouter == null) {
      goRouter = GoRouter(
        routes: <RouteBase>[
          GoRoute(
              path: Routes.splash,
              builder: (context, state) => routeFactory.create(context, state)),
        ],
      );
      _goRouter = goRouter;
    } else {
      goRouter = _goRouter!;
    }

    return goRouter;
  }
}
