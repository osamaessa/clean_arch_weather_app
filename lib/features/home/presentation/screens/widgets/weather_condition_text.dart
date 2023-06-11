import 'package:flutter/material.dart';
import 'package:weather_app/features/home/data/model/weather_condition_data.dart';

class WeatherConditionText extends StatefulWidget {
  const WeatherConditionText({Key? key, required this.condition})
      : super(key: key);
  final WeatherConditionData condition;

  @override
  State<WeatherConditionText> createState() => _WeatherConditionTextState();
}

class _WeatherConditionTextState extends State<WeatherConditionText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        widget.condition.text,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20,
          color: Colors.white
        ),
      ),
    );
  }
}
