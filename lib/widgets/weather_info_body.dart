import 'package:flutter/material.dart';
import 'package:weather_condetion/models/weather_model.dart';

import 'temp_component.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                weatherModel.city,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Dexef',
                    color: Colors.white),
              ),
              Text(
                weatherModel.date,
                style: const TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: 'suse'),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            (weatherModel.condition == 'Partially cloudy' ||
                    weatherModel.condition == 'Cloudy')
                ? 'assets/images/cloudy.png'
                : (weatherModel.condition == 'Clear' ||
                        weatherModel.condition == 'Sunny')
                    ? 'assets/images/clear.png'
                    : 'assets/images/rainy.png',
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
          CustomDegreeAndLabel(
              color: Colors.black54,
              label: weatherModel.condition,
              temp: weatherModel.temp.toInt(),
              labelSize: 40,
              degreeSize: 30,
              tempSize: 70),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsetsDirectional.all(16),
            decoration: BoxDecoration(
              color: const Color(0xff405B73).withOpacity(0),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDegreeAndLabel(
                  label: 'Min Temp',
                  temp: weatherModel.minTemp.toInt(),
                  labelSize: 20,
                  degreeSize: 20,
                  tempSize: 40,
                  color: Colors.black54,
                ),
                CustomDegreeAndLabel(
                  label: 'Max Temp',
                  temp: weatherModel.maxTemp.toInt(),
                  labelSize: 20,
                  degreeSize: 20,
                  tempSize: 40,
                  color: Colors.black54,
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          weatherModel.windSpeed.round().toString(),
                          style: const TextStyle(
                              fontSize: 40,
                              fontFamily: 'suse',
                              color: Colors.black54),
                        ),
                        const Text(
                          'Km/h',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'suse',
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    const Text(
                      'wind speed',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'suse',
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
