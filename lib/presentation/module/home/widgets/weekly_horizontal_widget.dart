import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/weather/weekly/weekly_weather_entity.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart';

class WeeklyHorizontalWidget extends StatefulWidget {
  final WeeklyWeatherEntity weatherEntity;
  final DateTime selectedDate;
  const WeeklyHorizontalWidget(
      {super.key, required this.weatherEntity, required this.selectedDate});

  @override
  State<WeeklyHorizontalWidget> createState() => _WeeklyHorizontalWidgetState();
}

class _WeeklyHorizontalWidgetState extends State<WeeklyHorizontalWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: widget.weatherEntity.daily.map((data) {
          return GestureDetector(
            onTap: () {
              context
                  .read<HomeBloc>()
                  .add(GetSelectedDayEvent(selectedDay: data));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: isSameDay(
                                DateTime.parse(data.time!), widget.selectedDate)
                            ? Colors.orange
                            : Colors.white30),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Center(
                      child: Text(
                        formatDate(data.time!),
                        style: GoogleFonts.b612(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/png/${data.weatherCode}.png",
                      filterQuality: FilterQuality.medium,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Center(
                      child: Text(
                        "${data.apparentTemperatureMax!.round().toString()}°C | ${data.apparentTemperatureMin!.round().toString()}°C",
                        style: GoogleFonts.b612(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  String formatDate(String inputDate) {
    final dateTime = DateTime.parse(inputDate);
    final formatter = DateFormat('EE');
    return formatter.format(dateTime);
  }
}
