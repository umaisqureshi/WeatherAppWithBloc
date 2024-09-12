// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_app/data/local/current_location_service.dart' as _i5;
import 'package:weather_app/data/remote/api_service.dart' as _i7;
import 'package:weather_app/data/repository/weather_datasource.dart' as _i6;
import 'package:weather_app/data/repository/weather_repo.dart' as _i8;
import 'package:weather_app/domain/city/get_city_use_case.dart' as _i10;
import 'package:weather_app/domain/location/get_current_location_use_case.dart'
    as _i11;
import 'package:weather_app/domain/weather/select/get_selected_day_weather_use_case.dart'
    as _i12;
import 'package:weather_app/domain/weather/weekly/get_weekly_weather_use_case.dart'
    as _i9;
import 'package:weather_app/infrastucture/provider/home_route_provider.dart'
    as _i14;
import 'package:weather_app/infrastucture/routing/app_router.dart' as _i16;
import 'package:weather_app/infrastucture/routing/route_factory.dart' as _i15;
import 'package:weather_app/infrastucture/routing/transition/default_transition.dart'
    as _i3;
import 'package:weather_app/infrastucture/routing/transition_factory.dart'
    as _i4;
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i5.UserCurrentLocationService>(
        () => _i5.UserCurrentLocationService());
    gh.factory<_i6.WeatherDataSource>(() => _i7.WeatherApiService());
    gh.factory<_i8.WeatherRepository>(() =>
        _i8.WeatherRepository(weatherDataSource: gh<_i6.WeatherDataSource>()));
    gh.factory<_i9.WeeklyWeatherUseCase>(() =>
        _i9.WeeklyWeatherUseCase(repository: gh<_i8.WeatherRepository>()));
    gh.factory<_i10.GetCitiesByQueryUseCase>(() =>
        _i10.GetCitiesByQueryUseCase(repository: gh<_i8.WeatherRepository>()));
    gh.factory<_i11.GetUserCurrentLocationUseCase>(() =>
        _i11.GetUserCurrentLocationUseCase(
            service: gh<_i5.UserCurrentLocationService>()));
    gh.factory<_i12.SelectedDayWeatherUseCase>(() =>
        _i12.SelectedDayWeatherUseCase(
            repository: gh<_i8.WeatherRepository>()));
    gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(
          currentWeatherUseCase: gh<_i12.SelectedDayWeatherUseCase>(),
          currentLocationUseCase: gh<_i11.GetUserCurrentLocationUseCase>(),
          getCitiesByQueryUseCase: gh<_i10.GetCitiesByQueryUseCase>(),
          weeklyWeatherUseCase: gh<_i9.WeeklyWeatherUseCase>(),
        ));
    gh.factory<_i14.HomeRouteProvider>(() => _i14.HomeRouteProvider(
          bloc: gh<_i13.HomeBloc>(),
          currentLocationUseCase: gh<_i11.GetUserCurrentLocationUseCase>(),
          currentWeatherUseCase: gh<_i12.SelectedDayWeatherUseCase>(),
          getCitiesByQueryUseCase: gh<_i10.GetCitiesByQueryUseCase>(),
          weeklyWeatherUseCase: gh<_i9.WeeklyWeatherUseCase>(),
        ));
    gh.lazySingleton<_i15.AppRouteFactory>(() => _i15.AppRouteFactory(
          homeRouteProvider: gh<_i14.HomeRouteProvider>(),
          transitionFactory: gh<_i4.TransitionFactory>(),
        ));
    gh.lazySingleton<_i16.AppRouter>(
        () => _i16.AppRouter(routeFactory: gh<_i15.AppRouteFactory>()));
    return this;
  }
}
