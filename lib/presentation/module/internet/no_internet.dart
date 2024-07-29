import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset("assets/images/json/internet.json" , height: 300, width: 300),
          Text(
            "No Internet Connect",
            style: GoogleFonts.raleway(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
