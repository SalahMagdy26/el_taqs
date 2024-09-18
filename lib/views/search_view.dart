import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_condetion/models/weather_model.dart';
import 'package:weather_condetion/services/get_weather_dio.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/day_storm.jpg'),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 160),
          child: TextField(
            onSubmitted: (value) async {
              WeatherModel weatherModel = await WeatherService(Dio())
                  .getCurrentWeather(cityName: value);
              log(weatherModel.condition);
            },
            maxLength: 30,
            cursorColor: Colors.black38,
            style: const TextStyle(fontFamily: 'suse', fontSize: 20),
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search_sharp),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey,
              filled: true,
              hintText: 'Search for place',
              hintStyle: TextStyle(
                fontFamily: 'suse',
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
