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
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text("Smart Ligthing"),
            Text("Living room")
          ],
        ),
      ),
    );
  }
}
