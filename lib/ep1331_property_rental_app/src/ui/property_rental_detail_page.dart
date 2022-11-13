import 'package:dots_indicator/dots_indicator.dart';
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
                            children: [
                              Image.network(
                                "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_960_720.jpg",
                                fit: BoxFit.cover,
                              ),
                              Image.network(
                                "https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_960_720.jpg",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 8,
                          top: 64,
                          child: CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.4),
                            foregroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_back,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 4,
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.view_in_ar,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
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
                  Center(
                    child: DotsIndicator(
                      dotsCount: 5,
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
