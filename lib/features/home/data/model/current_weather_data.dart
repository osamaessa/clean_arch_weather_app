import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/data/model/weather_condition_data.dart';

class CurrentWeatherData extends Equatable {
  const CurrentWeatherData(this.tempC, this.tempF, this.windKph, this.windMph,
      this.windDegree, this.humidity, this.windDir, this.condition);

  final WeatherConditionData condition;
  final double tempC;
  final double tempF;
  final double windKph;
  final double windMph;
  final int windDegree;
  final int humidity;
  final String windDir;

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) {

    final WeatherConditionData condition = WeatherConditionData.fromJson(json['condition']);
    return CurrentWeatherData(
      json['temp_c'],
      json['temp_f'],
      json['wind_kph'],
      json['wind_mph'],
      json['wind_degree'],
      json['humidity'],
      json['wind_dir'],
      condition
    );
  }

  @override
  List<Object?> get props =>
      [tempC, tempF, windKph, windMph, windDegree, humidity, windDir];
}