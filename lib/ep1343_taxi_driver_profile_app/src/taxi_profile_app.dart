import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1343_taxi_driver_profile_app/src/taxi_home_page.dart';
import 'package:flutter_notebook_chapter_23/ep1343_taxi_driver_profile_app/src/taxi_profile_page.dart';

class TaxiProfileApp extends StatelessWidget {
  const TaxiProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaxiHomePage(),
    );
  }
}
