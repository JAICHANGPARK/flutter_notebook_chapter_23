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
            backgroundColor: const Color.fromRGBO(30, 41, 59, 1),
            leading: Icon(
              Icons.menu,
              color: Colors.blueGrey[400]!,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.blueGrey[400],
            ),
            onDestinationSelected: (idx) {
              setState(() {
                _selectedIndex = idx;
              });
            },
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(
                    Icons.home_work_outlined,
                  ),
                  label: Text("Home"),
                  padding: EdgeInsets.symmetric(vertical: 8)),
              NavigationRailDestination(
                icon: Icon(Icons.mail),
                label: Text("mail"),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.chat),
                label: Text("chat"),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
              ),
              NavigationRailDestination(
                icon: Icon(
                  Icons.description,
                ),
                label: Text("description"),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
              ),
            ],
            selectedIndex: _selectedIndex,
          ),
          const Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
