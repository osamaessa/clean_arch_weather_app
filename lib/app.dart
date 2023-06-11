import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/features/details/presentation/bloc/weather_details_data_bloc.dart';
import 'package:weather_app/features/home/presentation/bloc/weather_data_bloc.dart';
import 'package:weather_app/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => WeatherDataBloc(),
        ),
        BlocProvider(
          create: (_) => WeatherDataDetailsBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Weather App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Cairo',
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: DateTime.now().hour < 12 ? ColorsUtil.hexToColor("#FF010c38") : ColorsUtil.hexToColor("#FF4d70f2")
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
