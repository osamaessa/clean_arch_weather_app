import 'package:flutter/material.dart';
import 'package:weather_app/features/details/presentation/screens/details_screen.dart';
import 'package:weather_app/features/home/data/model/location_data.dart';
import 'package:weather_app/features/home/presentation/screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/details':
        final args = settings.arguments as LocationData;
        return MaterialPageRoute(builder: (_) => DetailsScreen(locationData: args));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
