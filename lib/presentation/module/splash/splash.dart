import 'package:flutter/material.dart';

import '../../base/screen/stateful_screen.dart';

import 'bloc/splash_bloc.dart';

class SplashScreen extends StatefulScreen<SplashBloc> {
  const SplashScreen({super.key, required super.bloc});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends ScreenState<SplashBloc>
    with TickerProviderStateMixin {
  @override
  Widget buildScreen(BuildContext context) {
    return const Scaffold(body: Center(child: Text("welcome")));
  }
}
