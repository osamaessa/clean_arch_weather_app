import 'package:flutter/material.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/features/home/data/model/location_data.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';
import 'package:weather_app/features/home/presentation/screens/widgets/current_weather_entitlements.dart';
import 'package:weather_app/features/home/presentation/screens/widgets/location_selected_button.dart';
import 'package:weather_app/features/home/presentation/screens/widgets/temperature_text.dart';
import 'package:weather_app/features/home/presentation/screens/widgets/time_now_text.dart';
import 'package:weather_app/features/home/presentation/screens/widgets/weather_condition_image.dart';
import 'package:weather_app/features/home/presentation/screens/widgets/weather_condition_text.dart';

class HomeView extends StatefulWidget {
  final WeatherData data;

  const HomeView({Key? key, required this.data}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final widgetsArr = [
      LocationSelectedButton(locationData: widget.data.locationData),
      const TimeNowText(),
      WeatherConditionImage(
          condition: widget.data.currentWeatherData.condition),
      const SizedBox(
        height: 30,
      ),
      TemperatureText(currentWeatherData: widget.data.currentWeatherData),
      WeatherConditionText(condition: widget.data.currentWeatherData.condition),
      const SizedBox(
        height: 40,
      ),
      IconButton(
        onPressed: () {
          navigateToDetails(context, widget.data.locationData);
        },
        iconSize: 40,
        icon: const Icon(
          Icons.keyboard_arrow_right_rounded,
          color: Colors.white,
        ),
      ),
      const Divider(
        height: 1,
        thickness: 2,
        indent: 90,
        endIndent: 90,
        color: Colors.white,
      ),
      const SizedBox(
        height: 30,
      ),
      CurrentWeatherEntitlements(
        currentWeatherData: widget.data.currentWeatherData,
      ),
      const SizedBox(
        height: 30,
      ),
    ];

    if (MediaQuery
        .of(context)
        .orientation == Orientation.portrait) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widgetsArr,
      );
    } else {
      return Row(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LocationSelectedButton(
                      locationData: widget.data.locationData,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const TimeNowText(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WeatherConditionImage(
                      condition: widget.data.currentWeatherData.condition,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    TemperatureText(
                      currentWeatherData: widget.data.currentWeatherData,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WeatherConditionText(
                      condition: widget.data.currentWeatherData.condition,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        navigateToDetails(context, widget.data.locationData);
                      },
                      iconSize: 40,
                      icon: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: CurrentWeatherEntitlements(
              currentWeatherData: widget.data.currentWeatherData,
            ),
          ),
        ],
      );
    }
  }

  void navigateToDetails(BuildContext context, LocationData locationData) {
    Navigator.of(context).pushNamed('/details', arguments: locationData);
  }
}
