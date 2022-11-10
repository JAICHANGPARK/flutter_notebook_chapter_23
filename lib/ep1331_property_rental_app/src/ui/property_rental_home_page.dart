import 'package:flutter/material.dart';

class PropertyRentalHomePage extends StatefulWidget {
  const PropertyRentalHomePage({Key? key}) : super(key: key);

  @override
  State<PropertyRentalHomePage> createState() => _PropertyRentalHomePageState();
}

class _PropertyRentalHomePageState extends State<PropertyRentalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Let's find your"),
            Text("dream home."),
            Container(
              height: 54,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Text("Previously Viewed"),
            Container(
              height: 240,
              color: Colors.pink,
            ),
            Text("Our Recommendations"),
            Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
