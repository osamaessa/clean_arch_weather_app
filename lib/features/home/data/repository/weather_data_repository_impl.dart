
import 'package:dartz/dartz.dart';
import 'package:weather_app/core/network/failure.dart';
import 'package:weather_app/core/di/service_locator.dart';
import 'package:weather_app/features/home/data/datasource/weather_data_remote_data_source.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';
import 'package:weather_app/features/home/domain/repository/weather_data_repository.dart';

class WeatherDataRepositoryImpl implements WeatherDataRepository{
  @override
  Future<Either<Failure, WeatherData>> getWeatherData({required String city}) {
    return inject<WeatherDataSource>().getWeatherData(city: city);
  }

}