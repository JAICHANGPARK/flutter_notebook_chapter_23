import 'package:flutter/material.dart';

class SmartHomeMainPage extends StatefulWidget {
  const SmartHomeMainPage({Key? key}) : super(key: key);

  @override
  State<SmartHomeMainPage> createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.apps_outlined),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "Hello, Dreamwalker",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Monday, 19 August 2022")
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 27,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 80,
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_outlined,
                  ),
                  iconSize: 32,
                  color: Colors.blueAccent,
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.pie_chart_outline,
                  ),
                  iconSize: 32,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic_none_outlined,
                  ),
                  iconSize: 32,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_outlined,
                  ),
                  iconSize: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
