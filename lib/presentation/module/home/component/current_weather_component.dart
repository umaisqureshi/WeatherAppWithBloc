import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart';
import 'package:weather_app/presentation/module/home/widgets/selected_day_landscape_view.dart';
import 'package:weather_app/presentation/module/home/widgets/selected_day_weather_widget.dart';
import 'package:weather_app/presentation/widget/error_widget.dart';
import 'package:weather_app/presentation/widget/error_widget_componet.dart';
import 'package:weather_app/presentation/widget/loading_indicator.dart';

class CurrentWeatherComponent extends ErrorWidgetComponent<HomeBloc, HomeState,
    CurrentWeatherState, ErrorState> {
  const CurrentWeatherComponent({
    super.key,
  });

  @override
  Widget buildComponent(BuildContext context, CurrentWeatherState state) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth >= 600) {
        return WeatherLandscapeView(
          location: state.city,
          isCelsius: state.isCelsius,
          currentWeather: state.currentWether,
        );
      }
      return WeatherVerticalBodyWidget(
        location: state.city,
        isCelsius: state.isCelsius,
        currentWether: state.currentWether,
      );
    });
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return const LoadingIndicator();
  }

  @override
  Widget buildError(BuildContext context, ErrorState error) {
    return ErrorScreenWidget(
      onPressed: () {
        context.read<HomeBloc>().add(RefreshWeatherEvent());
      },
    );
  }
}
