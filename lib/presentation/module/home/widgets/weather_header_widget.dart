import 'package:flutter/material.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
import 'package:weather_app/presentation/module/home/widgets/weather_bottom_widget.dart';
import 'package:weather_app/presentation/module/home/widgets/weather_main_header.dart';

class WeatherHeaderWidget extends StatelessWidget {
  final String location;
  final WeeklyWeatherEntity currentWether;
  final bool isLandscape;
  final bool isCelsius;
  const WeatherHeaderWidget(
      {super.key,
      required this.location,
      required this.currentWether,
      required this.isCelsius,
      required this.isLandscape});

  @override
  Widget build(BuildContext context) {
    return isLandscape
        ? Row(
            children: [
              WeatherMainHeader(
                isCelsius: isCelsius,
                currentWether: currentWether,
                location: location,
                isLandscape: isLandscape,
              ),
              WeatherBottomWidget(
                  isCelsius: isCelsius,
                  isLandscape: isLandscape,
                  currentWether: currentWether),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WeatherMainHeader(
                isCelsius: isCelsius,
                currentWether: currentWether,
                location: location,
                isLandscape: isLandscape,
              ),
              WeatherBottomWidget(
                  isCelsius: isCelsius,
                  isLandscape: isLandscape,
                  currentWether: currentWether),
            ],
          );
  }
}
