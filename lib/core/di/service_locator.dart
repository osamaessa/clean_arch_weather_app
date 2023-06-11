
import 'package:get_it/get_it.dart';
import 'package:weather_app/core/network/request.dart';
import 'package:weather_app/features/home/data/datasource/weather_data_remote_data_source.dart';
import 'package:weather_app/features/home/data/repository/weather_data_repository_impl.dart';
import 'package:weather_app/features/home/domain/repository/weather_data_repository.dart';
import 'package:weather_app/features/home/domain/usecase/get_wather_data_usacase.dart';
final inject = GetIt.instance;

Future<void> setUpDI() async{

  //use case
  inject.registerFactory<GetWeatherDataUseCase>(() => GetWeatherDataUseCase());

  //datasource
  inject.registerFactory<WeatherDataSource>(() => WeatherDataSourceImpl());

  //repositories
  inject.registerFactory<WeatherDataRepository>(() => WeatherDataRepositoryImpl());

  //request
  inject.registerSingleton<Request>(Request());

}