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
            Column(
              children: [
                const Text("Let's find your"),
                const Text(
                  "dream home.",
                  style: TextStyle(
                    color: Color(0xff6e38e0),
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
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
