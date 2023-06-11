import 'package:equatable/equatable.dart';
import 'package:weather_app/features/details/data/model/hourly_weather_data.dart';
import 'package:weather_app/features/home/data/model/weather_condition_data.dart';

class ForecastDay extends Equatable {
  const ForecastDay(this.date, this.dateEpoch, this.day, this.hourlyList);

  final String date;
  final int dateEpoch;
  final Day day;
  final List<HourlyWeatherData> hourlyList;

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    final Day day = Day.fromJson(json['day']);
    final hours = json['hour'];
    List<HourlyWeatherData> list = [];
    for(var hour in hours){
      list.add(HourlyWeatherData.fromJson(hour));
    }
    return ForecastDay(json['date'], json['date_epoch'], day, list);
  }

  @override
  List<Object?> get props => [date, dateEpoch, day, hourlyList];
}

class Day extends Equatable {
  const Day(
    this.maxTempC,
    this.maxTempF,
    this.minTempC,
    this.minTempF,
    this.avgTempC,
    this.avgTempF,
    this.maxWindMph,
    this.maxWindKph,
    this.avgHumidity,
    this.conditionData,
  );

  final double maxTempC;
  final double maxTempF;
  final double minTempC;
  final double minTempF;
  final double avgTempC;
  final double avgTempF;
  final double maxWindMph;
  final double maxWindKph;
  final double avgHumidity;
  final WeatherConditionData conditionData;

  factory Day.fromJson(Map<String, dynamic> json) {
    final WeatherConditionData condition = WeatherConditionData.fromJson(json['condition']);
    return Day(
      json['maxtemp_c'],
      json['maxtemp_f'],
      json['mintemp_c'],
      json['mintemp_f'],
      json['avgtemp_c'],
      json['avgtemp_f'],
      json['maxwind_mph'],
      json['maxwind_kph'],
      json['avghumidity'],
      condition
    );
  }

  @override
  List<Object?> get props => [
        maxTempC,
        maxTempF,
        minTempC,
        minTempF,
        avgTempF,
        avgTempF,
        maxWindMph,
        maxWindKph,
        avgHumidity,
        conditionData
      ];
}
