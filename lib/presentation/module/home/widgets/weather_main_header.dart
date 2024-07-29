import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';

class WeatherMainHeader extends StatelessWidget {
  final String location;
  final WeeklyWeatherEntity currentWether;
  final bool isLandscape;

  const WeatherMainHeader(
      {super.key,
        required this.currentWether,
        required this.location,
        required this.isLandscape});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          //  "📍$location",
          location,
          style: GoogleFonts.raleway(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          formatDate(currentWether.daily[0].time ?? DateTime.now().toString()),
          style: GoogleFonts.arima(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w200,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        isLandscape
            ? Image.asset(
          "assets/images/png/${currentWether.daily[0].weatherCode}.png",
          filterQuality: FilterQuality.high,
          height: 200,
          width: 200,
        )
            : Image.asset(
          "assets/images/png/${currentWether.daily[0].weatherCode}.png",
          filterQuality: FilterQuality.high,
        ),
        const SizedBox(
          height: 3,
        ),
        isLandscape
            ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            "${currentWether.daily[0].apparentTemperatureMax!.round().toString()}°C",
            style: GoogleFonts.raleway(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
            : Center(
          child: Text(
            "${currentWether.daily[0].apparentTemperatureMax!.round().toString()}°C",
            style: GoogleFonts.raleway(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  String formatDate(String inputDate) {
    final dateTime = DateTime.parse(inputDate);
    final formatter = DateFormat('EEEE, dd yyyy');
    return formatter.format(dateTime);
  }
}
