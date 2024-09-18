import 'package:flutter/material.dart';

import 'temp_component.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Alexandria',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Dexef',
                    color: Colors.white),
              ),
              Text(
                'updated at 23:46',
                style: TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: 'suse'),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/images/cloudy.png',
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
          const CustomDegreeAndLabel(
              color: Colors.black54,
              label: 'Light Rain',
              temp: 17,
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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDegreeAndLabel(
                  label: 'Min Temp',
                  temp: 25,
                  labelSize: 20,
                  degreeSize: 20,
                  tempSize: 40,
                  color: Colors.black54,
                ),
                CustomDegreeAndLabel(
                  label: 'Max Temp',
                  temp: 40,
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
                          '12',
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'suse',
                              color: Colors.black54),
                        ),
                        Text(
                          'Km/h',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'suse',
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    Text(
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
