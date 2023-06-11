import 'package:dartz/dartz.dart';
import 'package:weather_app/core/network/failure.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';

abstract class WeatherDataRepository {
  Future<Either<Failure,WeatherData>> getWeatherData({required String city});
}