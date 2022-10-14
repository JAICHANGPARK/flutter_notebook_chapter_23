import 'package:flutter/material.dart';

class SmartLightingPage extends StatefulWidget {
  const SmartLightingPage({Key? key}) : super(key: key);

  @override
  State<SmartLightingPage> createState() => _SmartLightingPageState();
}

class _SmartLightingPageState extends State<SmartLightingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Column(
          children: [
            const Text("Smart Ligthing"),
            const Text("Living room"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 38,
            width: 400,
            decoration: BoxDecoration(),
            child: DropdownButton<String>(
              items: [
                DropdownMenuItem(
                  child: Text("Panasonic Smart Lighting"),
                  value: "Panasonic Smart Lighting",
                ),
              ],
              onChanged: (Object? value) {},
              value: "Panasonic Smart Lighting",
            ),
          )
        ],
      ),
    );
  }
}
