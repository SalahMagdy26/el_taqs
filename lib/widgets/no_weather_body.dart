import 'package:flutter/material.dart';

import '../views/search_view.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'there is no weather 😔 start',
              style: TextStyle(fontSize: 28, fontFamily: 'suse'
                  // color: Colors.white
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchView()));
              },
              child: const Text(
                'searching now 🔍',
                style: TextStyle(
                    fontSize: 24, color: Colors.white, fontFamily: 'suse'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
