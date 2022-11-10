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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let's find your"),
            const Text("dream home."),
            Container(
              height: 54,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            const Text("Previously Viewed"),
            Container(
              height: 240,
              color: Colors.pink,
            ),
            const Text("Our Recommendations"),
            const Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
