import 'package:dartz/dartz.dart';
import 'package:weather_app/core/network/constants.dart';
import 'package:weather_app/core/network/failure.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';
import 'package:weather_app/core/di/service_locator.dart';
import 'package:weather_app/core/network/request.dart';

abstract class WeatherDataSource {
  Future<Either<Failure, WeatherData>> getWeatherData({required String city});
}

class WeatherDataSourceImpl implements WeatherDataSource {
  final Request request = inject<Request>();

  @override
  Future<Either<Failure, WeatherData>> getWeatherData(
      {required String city}) async {
    try {
      final response = await request.get(apiUrlForecast, {
        apiKeyKey: apiKey,
        apiUrlQueryArea: city,
        apiUrlQueryDays: '18',
        apiUrlQueryQuality: 'no',
        apiUrlQueryAlerts: 'no',
      });

      if (response.statusCode == 200) {
        return Right(WeatherData.fromJson(response.data));
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in WeatherDataSourceImpl'),
      );
    }
  }
}
