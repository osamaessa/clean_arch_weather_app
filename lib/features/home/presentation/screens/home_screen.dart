import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/widgets/base_scaffold.dart';
import 'package:weather_app/features/home/presentation/bloc/weather_data_bloc.dart';
import 'package:weather_app/features/home/presentation/bloc/weather_data_event.dart';
import 'package:weather_app/features/home/presentation/bloc/weather_data_state.dart';
import 'package:weather_app/features/home/presentation/screens/home_main_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherDataBloc>().add(
          const WeatherDataEvent('Amman'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "",
      appBarActions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
          ),
        )
      ],
      child: BlocConsumer<WeatherDataBloc, WeatherDataState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is WeatherDataStateLoaded) {
            return Center(
              child: HomeView(data: state.data),
            );
          } else if (state is WeatherDataStateError) {
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
