import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/data/model/weather_condition_data.dart';

class HourlyWeatherData extends Equatable {
  const HourlyWeatherData(this.tempC, this.tempF, this.windKph, this.windMph,
      this.windDegree, this.humidity, this.windDir, this.condition, this.time);

  final WeatherConditionData condition;
  final double tempC;
  final double tempF;
  final double windKph;
  final double windMph;
  final int windDegree;
  final int humidity;
  final String windDir;
  final String time;

  factory HourlyWeatherData.fromJson(Map<String, dynamic> json) {

    final WeatherConditionData condition = WeatherConditionData.fromJson(json['condition']);
    return HourlyWeatherData(
      json['temp_c'],
      json['temp_f'],
      json['wind_kph'],
      json['wind_mph'],
      json['wind_degree'],
      json['humidity'],
      json['wind_dir'],
      condition,
      json['time'],
    );
  }

  @override
  List<Object?> get props =>
      [tempC, tempF, windKph, windMph, windDegree, humidity, windDir, time];
}