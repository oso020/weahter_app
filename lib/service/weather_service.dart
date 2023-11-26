import 'package:dio/dio.dart';
import 'package:weather_app/model/model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);

  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '7c4194112f1748d5a5a123022232010';
  Future<WeatherModel> getWeatherData({required cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'Oops There was a problem try later';
      throw Exception(errMessage);
    } catch (e) {
      throw Exception('Oops there was an error , try later');
    }
  }
}
