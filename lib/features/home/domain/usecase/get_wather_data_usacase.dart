import 'package:dartz/dartz.dart';
import 'package:weather_app/core/di/service_locator.dart';
import 'package:weather_app/core/network/failure.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';
import 'package:weather_app/features/home/domain/repository/weather_data_repository.dart';

class GetWeatherDataUseCase {

  Future<Either<Failure,WeatherData>> invoke(String city) async{
    final response = await inject<WeatherDataRepository>().getWeatherData(city: city);
    return response;
  }
}