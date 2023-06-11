import 'package:flutter/material.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpDI();
  runApp(App());
}
