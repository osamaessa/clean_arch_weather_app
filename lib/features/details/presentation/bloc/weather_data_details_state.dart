import 'package:equatable/equatable.dart';
import 'package:weather_app/core/network/failure.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';

abstract class WeatherDataDetailsState extends Equatable {
  const WeatherDataDetailsState();
}

class WeatherDataDetailsStateLoading extends WeatherDataDetailsState {
  @override
  List<Object?> get props => [];
}

class WeatherDataDetailsStateError extends WeatherDataDetailsState {
  final String failure;

  const WeatherDataDetailsStateError(this.failure);

  @override
  List<Object?> get props => [failure];
}

class WeatherDataDetailsStateLoaded extends WeatherDataDetailsState {
  final WeatherData data;

  const WeatherDataDetailsStateLoaded(this.data);

  @override
  List<Object?> get props => [data];
}
