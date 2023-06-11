import 'package:flutter/material.dart';
import 'package:weather_app/core/colors.dart';

class WeatherIconWithTextValue extends StatelessWidget {
  final String iconPath;
  final String text;
  final String value;

  const WeatherIconWithTextValue(
      {Key? key,
        required this.iconPath,
        required this.text,
        required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          iconPath,
          width: 30,
          height: 30,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.white
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Center(
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white
            ),
          ),
        ),
      ],
    );
  }
}
