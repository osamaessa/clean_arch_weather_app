import 'package:flutter/material.dart';
import 'package:weather_app/features/home/data/model/weather_condition_data.dart';

class WeatherConditionImage extends StatefulWidget {
  const WeatherConditionImage({Key? key, required this.condition})
      : super(key: key);
  final WeatherConditionData condition;

  @override
  State<WeatherConditionImage> createState() => _WeatherConditionImageState();
}

class _WeatherConditionImageState extends State<WeatherConditionImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.condition.getConditionType().path,
      width: 150,
      height: 150,
    );
  }
}
