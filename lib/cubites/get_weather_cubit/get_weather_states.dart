import 'package:weather_app/model/model.dart';

class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState( this.weatherModel);
}

class WeatherFailureState extends WeatherState {}
