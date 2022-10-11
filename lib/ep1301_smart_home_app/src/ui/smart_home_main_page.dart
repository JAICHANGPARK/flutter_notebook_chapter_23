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
      body: Column(
        children: [

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            children: [
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
