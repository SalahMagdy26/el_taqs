import 'package:weather_condetion/models/weather_model.dart';

class WeatherStates{}
class NoWeatherState extends WeatherStates{}
class WeatherLoadedState extends WeatherStates{
  final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);
}
class WeatherFailureState extends WeatherStates{}