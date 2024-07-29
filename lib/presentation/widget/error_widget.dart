import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ErrorScreenWidget extends StatefulWidget {
  final void Function()? onPressed;
  const ErrorScreenWidget({super.key, required this.onPressed});

  @override
  State<ErrorScreenWidget> createState() => _ErrorScreenWidgetState();
}

class _ErrorScreenWidgetState extends State<ErrorScreenWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Lottie.asset("assets/images/json/error.json", onLoaded: (c) {
          _controller
            ..duration = c.duration
            ..forward()
            ..repeat();
        }, controller: _controller, height: 150, width: 150)),
        ElevatedButton(
            onPressed: widget.onPressed,
            child: Text(
              "Try Again",
              style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
      ],
    );
  }
}
