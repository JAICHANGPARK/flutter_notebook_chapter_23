import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1343_taxi_driver_profile_app/src/taxi_profile_page.dart';

class TaxiHomePage extends StatelessWidget {
  const TaxiHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taxi App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TaxiProfilePage(),
                ),
              ),
              child: const CircleAvatar(
                radius: 64,
                child: Text("Profile"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
