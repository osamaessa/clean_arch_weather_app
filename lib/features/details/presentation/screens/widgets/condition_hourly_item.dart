import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/features/details/data/model/hourly_weather_data.dart';

class ConditionHourly extends StatefulWidget {
  const ConditionHourly({Key? key, required this.data}) : super(key: key);
  final HourlyWeatherData data;

  @override
  State<ConditionHourly> createState() => _ConditionHourlyState();
}

class _ConditionHourlyState extends State<ConditionHourly> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('HH:mm').format(DateTime.parse(widget.data.time)),
            style: const TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 12,
              color: Colors.white
            ),
          ),
          Text(
            "${widget.data.tempC}\u2103",
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 12,
              color: Colors.white
            ),
          ),
          Image.asset(
            widget.data.condition.getConditionType().path,
            width: 20,
            height: 20,
          )
        ],
      ),
    );
  }
}
