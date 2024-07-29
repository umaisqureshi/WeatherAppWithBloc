import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/module/home/component/current_weather_component.dart';
import 'package:weather_app/presentation/module/home/location.dart';
import 'package:weather_app/presentation/module/home/model/location_model.dart';
import 'package:weather_app/presentation/module/internet/no_internet.dart';
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
    super.initState();
    getUserLocation();
  }

  getUserLocation() async {
    bloc.add(NetworkObserve());
  }

  @override
  void onListenableState(BuildContext context, Object? state) async {
    super.onListenableState(context, state);
    if (state is NetworkSuccess) {
      locationData = await UserLocation.determinePosition();
      bloc.add(GetCurrentWeatherEvent(
          time: DateTime.now(),
          city: locationData.city,
          lat: locationData.latitude,
          log: locationData.longitude));
    }
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
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is NetworkFailure) {
            return const NoInternetWidget();
          }

         return const HomeScreenView();
        },
      ),
    );
  }
}


class HomeScreenView extends StatefulWidget {
  const HomeScreenView({
    super.key,
  });

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 1.2 * kTextTabBarHeight, 40, 20),
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
            const CurrentWeatherComponent(),
          ],
        ),
      ),
    );
  }
}
