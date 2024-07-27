import 'package:flutter/material.dart';
import 'package:weather_app/presentation/module/home/location.dart';
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
  late String city;
  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  getUserLocation() async {
    city = await UserLocation.determinePosition();
  }

  @override
  Widget buildScreen(BuildContext context) {
    return const Scaffold(body: Center(child: Text("welcome")));
  }
}
