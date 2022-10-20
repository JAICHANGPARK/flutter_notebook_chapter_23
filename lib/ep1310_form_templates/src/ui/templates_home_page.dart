import 'package:flutter/material.dart';

class TemplatesHomePage extends StatefulWidget {
  const TemplatesHomePage({Key? key}) : super(key: key);

  @override
  State<TemplatesHomePage> createState() => _TemplatesHomePageState();
}

class _TemplatesHomePageState extends State<TemplatesHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.mail),
                label: Text("Home"),

              ),
            ],
            selectedIndex: _selectedIndex,
          ),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
