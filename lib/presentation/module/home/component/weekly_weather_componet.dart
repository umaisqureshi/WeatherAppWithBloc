import 'package:flutter/material.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart';
import 'package:weather_app/presentation/module/home/widgets/weekly_grid_widget.dart';
import 'package:weather_app/presentation/module/home/widgets/weekly_horizontal_widget.dart';
import 'package:weather_app/presentation/widget/widget_component.dart';

class WeeklyWeatherComponent
    extends WidgetComponent<HomeBloc, HomeState, WeeklyWeatherState> {
  final bool isLandscape;
  const WeeklyWeatherComponent({
    required this.isLandscape,
    super.key,
  });

  @override
  Widget buildComponent(BuildContext context, WeeklyWeatherState state) {
    return isLandscape
        ? WeeklyGridWidget(
            weatherEntity: state.weatherEntity,
            selectedDate: state.selectedDate,
          )
        : WeeklyHorizontalWidget(
            weatherEntity: state.weatherEntity,
            selectedDate: state.selectedDate,
          );
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return const SizedBox();
  }
}
