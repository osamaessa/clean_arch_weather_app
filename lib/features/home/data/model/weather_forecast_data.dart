import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/data/model/weather_forecast_day_data.dart';

class ForecastData extends Equatable {

  const ForecastData(this.days);

  final List<ForecastDay> days;
  factory ForecastData.fromJson(Map<String, dynamic> json){
    final forecastDay = json['forecastday']; // ForecastDay.fromJson();

    List<ForecastDay> list = [];
    for(var model in forecastDay){
      list.add(ForecastDay.fromJson(model));
    }
    return ForecastData(list);
  }

  @override
  List<Object?> get props => [days];
}