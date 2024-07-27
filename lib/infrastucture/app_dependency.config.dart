// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_app/data/remote/api_service.dart' as _i8;
import 'package:weather_app/data/repository/weather_datasource.dart' as _i7;
import 'package:weather_app/data/repository/weather_repo.dart' as _i9;
import 'package:weather_app/domain/city/get_city_use_case.dart' as _i12;
import 'package:weather_app/infrastucture/provider/splash_route_provider.dart'
    as _i5;
import 'package:weather_app/infrastucture/routing/app_router.dart' as _i11;
import 'package:weather_app/infrastucture/routing/route_factory.dart' as _i10;
import 'package:weather_app/infrastucture/routing/transition/default_transition.dart'
    as _i3;
import 'package:weather_app/infrastucture/routing/transition_factory.dart'
    as _i6;
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DefaultTransition>(() => _i3.DefaultTransition());
    gh.factory<_i4.HomeBloc>(() => _i4.HomeBloc());
    gh.factory<_i5.HomeRouteProvider>(
        () => _i5.HomeRouteProvider(bloc: gh<_i4.HomeBloc>()));
    gh.factory<_i6.TransitionFactory>(() =>
        _i6.TransitionFactory(defaultTransition: gh<_i3.DefaultTransition>()));
    gh.factory<_i7.WeatherDataSource>(() => _i8.WeatherApiService());
    gh.factory<_i9.WeatherRepository>(() =>
        _i9.WeatherRepository(weatherDataSource: gh<_i7.WeatherDataSource>()));
    gh.lazySingleton<_i10.AppRouteFactory>(() => _i10.AppRouteFactory(
          splashRouteProvider: gh<_i5.HomeRouteProvider>(),
          transitionFactory: gh<_i6.TransitionFactory>(),
        ));
    gh.lazySingleton<_i11.AppRouter>(
        () => _i11.AppRouter(routeFactory: gh<_i10.AppRouteFactory>()));
    gh.factory<_i12.GetWeatherUseCase>(
        () => _i12.GetWeatherUseCase(repository: gh<_i9.WeatherRepository>()));
    return this;
  }
}
