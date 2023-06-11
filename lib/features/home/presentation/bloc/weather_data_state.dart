
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/network/failure.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';

abstract class WeatherDataState extends Equatable {
  const WeatherDataState();
}

class WeatherDataStateLoading extends WeatherDataState {
  @override
  List<Object?> get props => [];
}

class WeatherDataStateError extends WeatherDataState {
  final String failure;

  const WeatherDataStateError(this.failure);
  @override
  List<Object?> get props => [failure];
}

class WeatherDataStateLoaded extends WeatherDataState {
  final WeatherData data;

  const WeatherDataStateLoaded(this.data);
  @override
  List<Object?> get props => [data];
}