import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/data/model/current_weather_data.dart';
import 'package:weather_app/features/home/data/model/location_data.dart';
import 'package:weather_app/features/home/data/model/weather_forecast_data.dart';

class WeatherData extends Equatable {

  const WeatherData(this.locationData, this.currentWeatherData, this.forecastData);

  final LocationData locationData;
  final CurrentWeatherData currentWeatherData;
  final ForecastData forecastData;

  factory WeatherData.fromJson(Map<String, dynamic> json){
    final LocationData locationData = LocationData.fromJson(json['location']);
    final CurrentWeatherData currentWeatherData = CurrentWeatherData.fromJson(json['current']);
    final ForecastData forecastData = ForecastData.fromJson(json['forecast']);

    return WeatherData(locationData, currentWeatherData, forecastData);
  }

  @override
  List<Object?> get props => [locationData, currentWeatherData, forecastData];
}