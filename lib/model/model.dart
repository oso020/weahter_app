
class WeatherModel {
  String?image;
  String cityName;
  String date;
  double temp;
  double  maxTemp;
  double minTemp;
  String weatherCondition ;

  WeatherModel(
      {required this.cityName,
      this.image,
      required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondition,
      
      });

  factory WeatherModel.fromJson(json) {

    return WeatherModel(
      image:json['forecast']['forecastday'][0]['day']['condition']['icon'],
        cityName:json['location']['name'],
        date: json['current']['last_updated'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp:json['forecast']['forecastday'][0]['day']['mintemp_c'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']['text']
        
        
        );
  }
}
