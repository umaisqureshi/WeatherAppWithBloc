// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_app/data/remote/api_service.dart' as _i6;
import 'package:weather_app/data/repository/weather_datasource.dart' as _i5;
import 'package:weather_app/data/repository/weather_repo.dart' as _i7;
import 'package:weather_app/domain/city/get_city_use_case.dart' as _i9;
import 'package:weather_app/domain/weather/select/get_selected_day_weather_use_case.dart'
    as _i10;
import 'package:weather_app/domain/weather/weekly/get_weekly_weather_use_case.dart'
    as _i8;
import 'package:weather_app/infrastucture/provider/home_route_provider.dart'
    as _i12;
import 'package:weather_app/infrastucture/routing/app_router.dart' as _i14;
import 'package:weather_app/infrastucture/routing/route_factory.dart' as _i13;
import 'package:weather_app/infrastucture/routing/transition/default_transition.dart'
    as _i3;
import 'package:weather_app/infrastucture/routing/transition_factory.dart'
    as _i4;
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i4.TransitionFactory>(() =>
        _i4.TransitionFactory(defaultTransition: gh<_i3.DefaultTransition>()));
    gh.factory<_i5.WeatherDataSource>(() => _i6.WeatherApiService());
    gh.factory<_i7.WeatherRepository>(() =>
        _i7.WeatherRepository(weatherDataSource: gh<_i5.WeatherDataSource>()));
    gh.factory<_i8.WeeklyWeatherUseCase>(() =>
        _i8.WeeklyWeatherUseCase(repository: gh<_i7.WeatherRepository>()));
    gh.factory<_i9.GetCitiesByQueryUseCase>(() =>
        _i9.GetCitiesByQueryUseCase(repository: gh<_i7.WeatherRepository>()));
    gh.factory<_i10.SelectedDayWeatherUseCase>(() =>
        _i10.SelectedDayWeatherUseCase(
            repository: gh<_i7.WeatherRepository>()));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(
          currentWeatherUseCase: gh<_i10.SelectedDayWeatherUseCase>(),
          getCitiesByQueryUseCase: gh<_i9.GetCitiesByQueryUseCase>(),
          weeklyWeatherUseCase: gh<_i8.WeeklyWeatherUseCase>(),
        ));
    gh.factory<_i12.HomeRouteProvider>(() => _i12.HomeRouteProvider(
          bloc: gh<_i11.HomeBloc>(),
          currentWeatherUseCase: gh<_i10.SelectedDayWeatherUseCase>(),
          getCitiesByQueryUseCase: gh<_i9.GetCitiesByQueryUseCase>(),
          weeklyWeatherUseCase: gh<_i8.WeeklyWeatherUseCase>(),
        ));
    gh.lazySingleton<_i13.AppRouteFactory>(() => _i13.AppRouteFactory(
          splashRouteProvider: gh<_i12.HomeRouteProvider>(),
          transitionFactory: gh<_i4.TransitionFactory>(),
        ));
    gh.lazySingleton<_i14.AppRouter>(
        () => _i14.AppRouter(routeFactory: gh<_i13.AppRouteFactory>()));
    return this;
  }
}
