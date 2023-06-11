import 'package:equatable/equatable.dart';

class LocationData extends Equatable {

  const LocationData(this.name, this.region, this.country, this.lat, this.lon);

  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;

  factory LocationData.fromJson(Map<String, dynamic> json){
    return LocationData(json['name'], json['region'], json['country'], json['lat'], json['lon'], );
  }

  @override
  List<Object?> get props => [name, region, country, lat, lon];
}