import 'package:flutter/material.dart';
import 'package:weather_app/features/home/data/model/current_weather_data.dart';

class TemperatureText extends StatefulWidget {
  const TemperatureText({Key? key, required this.currentWeatherData}) : super(key: key);
  final CurrentWeatherData currentWeatherData;

  @override
  State<TemperatureText> createState() => _TemperatureTextState();
}

class _TemperatureTextState extends State<TemperatureText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "${widget.currentWeatherData.tempC}\u2103",
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 50,
          color: Colors.white
        ),
      ),
    );
  }
}

