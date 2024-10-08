import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart';
import 'package:weather_app/presentation/module/home/component/weekly_weather_componet.dart';
import 'package:weather_app/presentation/module/home/widgets/weather_header_widget.dart';

class WeatherVerticalBodyWidget extends StatelessWidget {
  final String location;
  final WeeklyWeatherEntity currentWether;
final bool isCelsius;
  const WeatherVerticalBodyWidget(
      {super.key, required this.location, required this.currentWether, required this.isCelsius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: CustomRefreshIndicator(
        onRefresh: () async {
          context.read<HomeBloc>().add(RefreshWeatherEvent());
        },
        indicatorSettleDuration: const Duration(seconds: 1),
        builder: MaterialIndicatorDelegate(
            displacement: 30,
            backgroundColor: Colors.transparent,
            elevation: 0,
            withRotation: false,
            builder: (context, controller) {
              return Lottie.asset("assets/images/json/loading.json",
                  height: 60, width: 60);
            }),
        child: ListView(
          padding: EdgeInsets.zero,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WeatherHeaderWidget(
              isCelsius: isCelsius,
              isLandscape: false,
              location: location,
              currentWether: currentWether,
            ),
            const WeeklyWeatherComponent(
              isLandscape: false,

            ),
          ],
        ),
      ),
    );
  }
}
