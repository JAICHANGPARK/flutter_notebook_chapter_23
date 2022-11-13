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
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: PageView(
                            children: const [],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.view_in_ar,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Take Virtual Tour",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [],
                        ),
                        Divider(
                          color: Colors.grey[500],
                          height: 42,
                        ),
                        const Text("About"),
                        const Text("lorem"),
                        Divider(
                          color: Colors.grey[500],
                          height: 42,
                        ),
                        const Text("OverView"),
                        Wrap(
                          children: const [],
                        ),
                        Divider(
                          color: Colors.grey[500],
                          height: 42,
                        ),
                        const Text("Location"),
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
