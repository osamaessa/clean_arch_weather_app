import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/data/model/weather_condition_type.dart';

class WeatherConditionData extends Equatable {

  const WeatherConditionData(this.text, this.icon, this.code);

  final String text;
  final String icon;
  final int code;

  factory WeatherConditionData.fromJson(Map<String, dynamic> json){
    return WeatherConditionData(json['text'], json['icon'], json['code']);
  }

  ConditionType getConditionType(){
    var type = ConditionType.sun;
    switch(code){
      case 1000:
        type = ConditionType.sun;
        break;
      case 1003:
      case 1006:
        type = ConditionType.cloudy;
        break;
      case 1009:
      case 1030:
      case 1135:
      case 1147:
      case 1072:
      case 1087:
        type = ConditionType.overcast;
        break;
      case 1063:
      case 1069:
      case 1150:
      case 1153:
      case 1168:
      case 1171:
      case 1180:
      case 1183:
      case 1186:
      case 1189:
      case 1192:
      case 1195:
      case 1198:
      case 1201:
      case 1204:
      case 1207:
        type = ConditionType.rainy;
        break;
      case 1066:
      case 1114:
      case 1117:
      case 1210:
      case 1213:
      case 1216:
      case 1219:
      case 1222:
      case 1225:
      case 1237:
      case 1240:
      case 1243:
      case 1246:
      case 1249:
      case 1252:
      case 1255:
      case 1258:
      case 1261:
      case 1264:
      case 1273:
      case 1276:
      case 1279:
      case 1282:
        type = ConditionType.snow;
        break;

    }

    return type;
  }

  @override
  List<Object?> get props => [text, icon, code];
}