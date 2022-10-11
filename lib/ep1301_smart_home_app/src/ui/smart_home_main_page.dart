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
            Row(
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
                Expanded(child: Column(
                  children: [
                    
                  ],
                )),
                CircleAvatar(
                  radius: 27,

                )
              ],
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
