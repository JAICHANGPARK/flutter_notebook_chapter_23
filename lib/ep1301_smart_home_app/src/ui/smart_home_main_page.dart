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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16
              ),
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
                      children: [
                        Text(
                          "Hello, Dreamwalker",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Monday, 19 August 2022")
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 27,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            children: [
              const Expanded(child: Placeholder()),
              const Expanded(child: Placeholder()),
              const Expanded(child: Placeholder()),
              const Expanded(child: Placeholder()),
              const Expanded(child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
