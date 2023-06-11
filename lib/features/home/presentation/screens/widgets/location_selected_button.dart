import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/features/home/data/model/location_data.dart';
import '../../bloc/weather_data_bloc.dart';
import '../../bloc/weather_data_event.dart';

class LocationSelectedButton extends StatefulWidget {
  const LocationSelectedButton({Key? key, required this.locationData})
      : super(key: key);

  final LocationData locationData;

  @override
  State<LocationSelectedButton> createState() => _LocationSelectedButtonState();
}

class _LocationSelectedButtonState extends State<LocationSelectedButton> {
  @override
  Widget build(BuildContext context) {
    Widget optionAmman = SimpleDialogOption(
      child: const Text('Amman'),
      onPressed: () {
        Navigator.pop(context);
        context.read<WeatherDataBloc>().add(
              const WeatherDataEvent('Amman'),
            );
      },
    );
    Widget optionIrbid = SimpleDialogOption(
      child: const Text('Irbid'),
      onPressed: () {
        Navigator.pop(context);
        context.read<WeatherDataBloc>().add(
              const WeatherDataEvent('Irbid'),
            );
      },
    );
    Widget optionZarqa = SimpleDialogOption(
      child: const Text('Al Zarqa'),
      onPressed: () {
        Navigator.pop(context);
        context.read<WeatherDataBloc>().add(
              const WeatherDataEvent('Zarqa'),
            );
      },
    );
    Widget optionAqaba = SimpleDialogOption(
      child: const Text('Aqaba'),
      onPressed: () {
        Navigator.pop(context);
        context.read<WeatherDataBloc>().add(
              const WeatherDataEvent('Aqaba'),
            );
      },
    );

    SimpleDialog dialog = SimpleDialog(
      title: const Text('Choose a city'),
      children: <Widget>[
        optionAmman,
        optionIrbid,
        optionZarqa,
        optionAqaba,
      ],
    );
    return Center(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
        ),
        icon: Icon(
          Icons.arrow_drop_down_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return dialog;
            },
          );
        },
        label: Text(
          widget.locationData.name,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
