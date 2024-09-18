class WeatherModel {
  final String city;
  final String date;
  final String? image;
  final String condition;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final double windSpeed;

  WeatherModel(
      {required this.windSpeed,
      required this.city,
      required this.date,
      this.image,
      required this.condition,
      required this.temp,
      required this.maxTemp,
      required this.minTemp});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      city: json['address'],
      date: json['currentConditions']['datetime'],
      condition: json['currentConditions']['conditions'],
      temp: json['days'][0]['temp'],
      maxTemp: json['days'][0]['tempmax'],
      minTemp: json['days'][0]['tempmin'],
      windSpeed: json['days'][0]['windspeed'],
    );
  }
}
