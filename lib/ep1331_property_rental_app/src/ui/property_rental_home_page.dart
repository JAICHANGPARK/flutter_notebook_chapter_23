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
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Let's find your",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "dream home.",
                    style: TextStyle(
                      color: Color(0xff6e38e0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 54,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Previously Viewed",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 240,
                    color: Colors.pink,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
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
