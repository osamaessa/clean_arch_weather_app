import 'package:flutter/material.dart';
import 'package:weather_app/features/home/data/model/current_weather_data.dart';
import 'package:weather_app/features/home/presentation/screens/widgets/vertical_title_icon_value.dart';

class CurrentWeatherEntitlements extends StatefulWidget {
  const CurrentWeatherEntitlements({Key? key, required this.currentWeatherData})
      : super(key: key);
  final CurrentWeatherData currentWeatherData;

  @override
  State<CurrentWeatherEntitlements> createState() =>
      _CurrentWeatherEntitlementsState();
}

class _CurrentWeatherEntitlementsState
    extends State<CurrentWeatherEntitlements> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WeatherIconWithTextValue(
            iconPath: 'images/humidity.png',
            text: 'Humidity',
            value: widget.currentWeatherData.humidity.toString(),
          ),
          Container(
            height: 30,
            width: 2,
            color: Colors.white,
          ),
          WeatherIconWithTextValue(
            iconPath: 'images/wind_direction.png',
            text: 'Wind Direction',
            value: widget.currentWeatherData.windDir.toString(),
          ),
          Container(
            height: 30,
            width: 2,
            color: Colors.white,
          ),
          WeatherIconWithTextValue(
            iconPath: 'images/wind.png',
            text: 'Wind',
            value: widget.currentWeatherData.windDegree.toString(),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WeatherIconWithTextValue(
            iconPath: 'images/humidity.png',
            text: 'Humidity',
            value: widget.currentWeatherData.humidity.toString(),
          ),
          Container(
            height: 2,
            width: 30,
            color: Colors.white,
          ),
          WeatherIconWithTextValue(
            iconPath: 'images/wind_direction.png',
            text: 'Wind Direction',
            value: widget.currentWeatherData.windDir.toString(),
          ),
          Container(
            height: 2,
            width: 30,
            color: Colors.white,
          ),
          WeatherIconWithTextValue(
            iconPath: 'images/wind.png',
            text: 'Wind',
            value: widget.currentWeatherData.windDegree.toString(),
          ),
        ],
      );
    }
  }
}
