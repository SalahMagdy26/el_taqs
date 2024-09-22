import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_condetion/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://weather.visualcrossing.com';
  final String apiKey = '2F4XCNSJUTVPYBU9RGRU9YQW5';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/VisualCrossingWebServices/rest/services/timeline/$cityName/today?unitGroup=metric&key=$apiKey');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data ??
          'oops, you type wrong city name !!,try another correct one';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops there was an error, try again later :)');
    }
  }
}
