import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewUfcHomePage extends StatefulWidget {
  const NewUfcHomePage({Key? key}) : super(key: key);

  @override
  State<NewUfcHomePage> createState() => _NewUfcHomePageState();
}

class _NewUfcHomePageState extends State<NewUfcHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/UFC_logo.svg/1280px-UFC_logo.svg.png",
                        width: 64,
                        color: Color.fromRGBO(208, 9, 8, 1),
                      ),
                      // SvgPicture.network(
                      //   "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/UFC_logo.svg/1280px-UFC_logo.svg",
                      //   width: 120,
                      //   color: Colors.red,
                      // ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "STACKED CARD",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 240,
                color: Colors.red,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: Image.network(
                        "https://cdn.pixabay.com/photo/2012/10/25/23/32/boxing-62867_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("2 Champinship bouts"),
                            Text("Sat, Oct 22"),
                            Text("10:00 PM +04"),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                ),
                                Text("Arab Emirates / Yas Island")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                color: Colors.pink,
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Text(
                      "WATCH EMBEDDED SERIES",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 64,
                            color: Colors.red,
                          ),
                        ),
                        Positioned(
                          right: -32,
                          bottom: 140,
                          child: Transform.rotate(
                            angle: -0.2,
                            child: Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 24,
                          bottom: 72,
                          child: Transform.rotate(
                            angle: -0.2,
                            child: Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 24,
                          top: 16,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                  color: Colors.red,
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
