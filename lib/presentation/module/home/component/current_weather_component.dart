import 'package:flutter/material.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart';
import 'package:weather_app/presentation/module/home/widgets/current_weather_widget.dart';
import 'package:weather_app/presentation/widget/loading_indicator.dart';
import 'package:weather_app/presentation/widget/widget_component.dart';

class CurrentWeatherComponent
    extends WidgetComponent<HomeBloc, HomeState, CurrentWeatherState> {
  const CurrentWeatherComponent({
    super.key,
  });

  @override
  Widget buildComponent(BuildContext context, CurrentWeatherState state) {
    return WeatherBodyWidget(
      location: state.city,
    );
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return const LoadingIndicator();
  }
}
