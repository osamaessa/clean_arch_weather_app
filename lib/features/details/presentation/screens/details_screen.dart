import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/widgets/base_scaffold.dart';
import 'package:weather_app/features/details/presentation/bloc/weather_data_details_state.dart';
import 'package:weather_app/features/details/presentation/bloc/weather_details_data_bloc.dart';
import 'package:weather_app/features/details/presentation/bloc/weather_details_data_event.dart';
import 'package:weather_app/features/details/presentation/screens/details_main_view.dart';
import 'package:weather_app/features/home/data/model/location_data.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.locationData}) : super(key: key);
  final LocationData locationData;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherDataDetailsBloc>().add(
          WeatherDataDetailsEvent(widget.locationData.name),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: DateFormat('EEEE, dd').format(DateTime.now()),
      child: BlocConsumer<WeatherDataDetailsBloc, WeatherDataDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is WeatherDataDetailsStateLoaded) {
            return Center(
              child: DetailsView(data: state.data),
            );
          } else if (state is WeatherDataDetailsStateError) {
            return Center(
              child: Text(state.failure),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
