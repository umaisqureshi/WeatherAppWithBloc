import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart';

class WeatherBottomWidget extends StatefulWidget {
  final WeeklyWeatherEntity currentWether;
  final bool isLandscape;
  final bool isCelsius;
  const WeatherBottomWidget(
      {super.key,
      required this.isLandscape,
      required this.currentWether,
      required this.isCelsius});

  @override
  State<WeatherBottomWidget> createState() => _WeatherBottomWidgetState();
}

class _WeatherBottomWidgetState extends State<WeatherBottomWidget> {
  bool positive = true;

  @override
  void initState() {
    positive = widget.isCelsius;
    super.initState();
  }
  @override
  void didUpdateWidget(covariant WeatherBottomWidget oldWidget) {
    positive = widget.isCelsius;
    super.didUpdateWidget(oldWidget);
  }

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
                    ' ${widget.currentWether.daily[0].windSpeed10mMax?.round().toString() ?? 0} km/h',
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
                text:
                    ' ${widget.currentWether.daily[0].relativeHumidity2mMax ?? 0}%',
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
          width: 80,
          child: AnimatedToggleSwitch<bool>.dual(
            current: positive,
            first: true,
            second: false,
            spacing: 5.0,
            style: const ToggleStyle(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderColor: Colors.transparent,
              backgroundColor: Colors.white24,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 1.5),
                ),
              ],
            ),
            borderWidth: 2.0,
            height: 45,
            onChanged: (b) {
              setState(() => positive = b);

              context
                  .read<HomeBloc>()
                  .add(ConvertWeatherEvent(isCelsius: positive));
            },
            styleBuilder: (b) => ToggleStyle(
                indicatorColor: b ? Colors.deepPurple : Colors.deepPurple),
            iconBuilder: (value) => value
                ? const Text('C°',
                    style: TextStyle(color: Colors.white, fontSize: 16))
                : const Text('F°',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
            textBuilder: (value) => value
                ? const Center(
                    child: Text(
                    'F°',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ))
                : const Center(
                    child: Text(
                    'C°',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.06,
        ),
      ],
    );
  }
}
