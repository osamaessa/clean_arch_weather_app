import 'package:flutter/material.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';

class HeaderDetailsWeatherNow extends StatefulWidget {
  const HeaderDetailsWeatherNow({Key? key, required this.data}) : super(key: key);
  final WeatherData data;

  @override
  State<HeaderDetailsWeatherNow> createState() => _HeaderDetailsWeatherNowState();
}

class _HeaderDetailsWeatherNowState extends State<HeaderDetailsWeatherNow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.data.locationData.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
              Text(
                "${widget.data.currentWeatherData.tempC}\u2103",
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  color: Colors.white
                ),
              )
            ],
          ),
          Image.asset(
            widget.data.currentWeatherData.condition.getConditionType().path,
            width: 110,
            height: 110,
          )
        ],
      ),
    );
  }
}
