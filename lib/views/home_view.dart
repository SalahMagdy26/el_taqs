import 'package:flutter/material.dart';
import 'package:weather_condetion/views/search_view.dart';

import '../widgets/no_weather_body.dart';
// import '../widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.white, fontFamily: 'Dexef'),
        ),
        backgroundColor: const Color(0xff112037),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchView()));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/night_cloud.jpg'),
            fit: BoxFit.fill,
            // opacity: 0.80,
          )),
          child: const NoWeatherBody()),
    );
  }
}
