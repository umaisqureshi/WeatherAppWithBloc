import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
import 'package:weather_app/presentation/module/home/component/weekly_weather_componet.dart';

class WeatherBodyWidget extends StatelessWidget {
  final String location;
  final WeeklyWeatherEntity currentWether;

  const WeatherBodyWidget(
      {super.key, required this.location, required this.currentWether});

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
            style: GoogleFonts.b612(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            formatDate(
                currentWether.daily[0].time ?? DateTime.now().toString()),
            style: GoogleFonts.arima(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Image.asset(
            "assets/images/png/${currentWether.daily[0].weatherCode}.png",
            filterQuality: FilterQuality.high,
          ),
          const SizedBox(
            height: 3,
          ),
          Center(
            child: Text(
              "${currentWether.daily[0].apparentTemperatureMax!.round().toString()}°C",
              style: GoogleFonts.b612(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Wind :',
                  style: GoogleFonts.b612(
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
                  style: GoogleFonts.b612(
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
          const WeeklyWeatherComponent(),
        ],
      ),
    );
  }

  String formatDate(String inputDate) {
    final dateTime = DateTime.parse(inputDate);
    final formatter = DateFormat('EEEE, dd yyyy');
    return formatter.format(dateTime);
  }
}
