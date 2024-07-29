import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';

class WeatherBottomWidget extends StatelessWidget {
  final WeeklyWeatherEntity currentWether;
  final bool isLandscape;
  const WeatherBottomWidget(
      {super.key, required this.isLandscape, required this.currentWether});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Wind :',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  letterSpacing: 1.1,
                  fontSize: 18, // Or any color based on weatherCode
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ' ${currentWether.daily[0].windSpeed10mMax?.round().toString() ?? 0} km/h',
                style: const TextStyle(
                  fontSize: 16, // Or any color based on weatherCode
                  color: Colors.white38, // Or any color based on weatherCode
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Humidity :',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  letterSpacing: 1.1,
                  fontSize: 18, // Or any color based on weatherCode
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' ${currentWether.daily[0].relativeHumidity2mMax ?? 0}%',
                style: const TextStyle(
                  fontSize: 16, // Or any color based on weatherCode
                  color: Colors.white38, // Or any color based on weatherCode
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.06,
        ),
      ],
    );
  }
}
