
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
           const SizedBox(
            height: 10,
          ),
          
        ],
      ),
    );
  }
}
