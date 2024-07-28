import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/presentation/module/home/location.dart';
import 'package:weather_app/presentation/module/home/model/location_model.dart';
import '../../base/screen/stateful_screen.dart';
import 'bloc/home_bloc.dart';

class HomeScreen extends StatefulScreen<HomeBloc> {
  const HomeScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends ScreenState<HomeBloc>
    with TickerProviderStateMixin {
  late LocationModel locationData;
  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  getUserLocation() async {
    locationData = await UserLocation.determinePosition();
    bloc.add(GetCurrentWeatherEvent(
        lat: locationData.latitude, log: locationData.longitude));
    bloc.add(GetWeeklyWeatherEvent(
        lat: locationData.latitude, log: locationData.longitude));
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: HomeScreenVerticalView(
        location: locationData.city,
      ),
    );
  }
}

class HomeScreenVerticalView extends StatefulWidget {
  final String location;

  const HomeScreenVerticalView({super.key, required this.location});

  @override
  State<HomeScreenVerticalView> createState() => _HomeScreenVerticalViewState();
}

class _HomeScreenVerticalViewState extends State<HomeScreenVerticalView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 1.2 * kTextTabBarHeight, 40, 20),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepPurple),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepPurple),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -1.2),
              child: Container(
                height: 300,
                width: 600,
                decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            ),
            WeatherBodyWidget(
              location: widget.location,
            )
          ],
        ),
      ),
    );
  }
}


class WeatherBodyWidget extends StatelessWidget {
  final String location;
  const WeatherBodyWidget({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "📍$location",
            style: GoogleFonts.raleway(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Sunday, 28 2024",
            style: GoogleFonts.arima(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Image.asset("assets/images/png/2.png"),
        ],
      ),
    );
  }
}
