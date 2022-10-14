import 'package:flutter/material.dart';

class SmartLightingPage extends StatefulWidget {
  const SmartLightingPage({Key? key}) : super(key: key);

  @override
  State<SmartLightingPage> createState() => _SmartLightingPageState();
}

class _SmartLightingPageState extends State<SmartLightingPage> {
  bool condition = true;

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
          children: const [
            Text("Smart Ligthing"),
            Text("Living room"),
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
            // width: 200,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                borderRadius: BorderRadius.circular(24)),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: DropdownButton<String>(
              underline: Container(),
              items: const [
                DropdownMenuItem(
                  child: Text("Panasonic Smart Lighting"),
                  value: "Panasonic Smart Lighting",
                ),
              ],
              onChanged: (Object? value) {},
              value: "Panasonic Smart Lighting",
            ),
          ),
          Container(
            child: Row(
              children: [
                Text('Device condition'),
                Text(condition ? "On" : "Off"),
                Switch(
                    value: condition,
                    onChanged: (b) {
                      setState(() {
                        condition = b;
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
