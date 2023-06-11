
import 'package:bloc/bloc.dart';
import 'package:weather_app/core/di/service_locator.dart';
import 'package:weather_app/features/details/presentation/bloc/weather_data_details_state.dart';
import 'package:weather_app/features/details/presentation/bloc/weather_details_data_event.dart';
import 'package:weather_app/features/home/domain/usecase/get_wather_data_usacase.dart';

class WeatherDataDetailsBloc extends Bloc<WeatherDataDetailsEvent, WeatherDataDetailsState> {
  WeatherDataDetailsBloc() : super(WeatherDataDetailsStateLoading()) {
    on<WeatherDataDetailsEvent>((event, emit) async {
      emit(WeatherDataDetailsStateLoading());
      var result = await inject<GetWeatherDataUseCase>().invoke(event.city);

      result.fold((failure) {
        emit(WeatherDataDetailsStateError(failure.message));
      }, (data) {
        emit(WeatherDataDetailsStateLoaded(data));
      });
    });
  }
}
