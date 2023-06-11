import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/features/details/data/model/hourly_weather_data.dart';
import 'package:weather_app/features/home/data/model/weather_forecast_day_data.dart';

class ConditionDaily extends StatefulWidget {
  const ConditionDaily({Key? key, required this.data}) : super(key: key);
  final ForecastDay data;

  @override
  State<ConditionDaily> createState() => _ConditionDailyState();
}

class _ConditionDailyState extends State<ConditionDaily> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('EEEE, dd').format(
              DateTime.parse(
                widget.data.date,
              ),
            ),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  widget.data.day.conditionData.getConditionType().path,
                  width: 20,
                  height: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "${widget.data.day.minTempC}\u2103",
                  style: const TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "${widget.data.day.maxTempC}\u2103",
                  style: const TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
