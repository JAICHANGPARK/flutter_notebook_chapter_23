import 'package:flutter/material.dart';

class PropertyRentalDetailPage extends StatefulWidget {
  const PropertyRentalDetailPage({Key? key}) : super(key: key);

  @override
  State<PropertyRentalDetailPage> createState() => _PropertyRentalDetailPageState();
}

class _PropertyRentalDetailPageState extends State<PropertyRentalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [],
                        ),
                        Divider(),
                        Text("About"),
                        Text("lorem"),
                        Divider(),
                        Text("OverView"),
                        Wrap(
                          children: [],
                        ),
                        Divider(),
                        Text("Location"),
                        Container(
                          height: 200,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Contact Agent"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(
                        double.infinity,
                        double.infinity,
                      ),
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      minimumSize: const Size(
                        double.infinity,
                        double.infinity,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text(
                      "Book a Visit",
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
