
import 'package:bloc/bloc.dart';
import 'package:weather_app/core/di/service_locator.dart';
import 'package:weather_app/features/home/domain/usecase/get_wather_data_usacase.dart';
import 'package:weather_app/features/home/presentation/bloc/weather_data_event.dart';
import 'package:weather_app/features/home/presentation/bloc/weather_data_state.dart';

class WeatherDataBloc extends Bloc<WeatherDataEvent, WeatherDataState> {
  WeatherDataBloc() : super(WeatherDataStateLoading()) {
    on<WeatherDataEvent>((event, emit) async {
      emit(WeatherDataStateLoading());
      var result = await inject<GetWeatherDataUseCase>().invoke(event.city);

      result.fold((failure) {
        emit(WeatherDataStateError(failure.message));
      }, (data) {
        emit(WeatherDataStateLoaded(data));
      });
    });
  }
}
