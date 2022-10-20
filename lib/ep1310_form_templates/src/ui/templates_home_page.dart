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
            trailing: Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                      ),
                      color: Colors.blueGrey[400],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.timer,
                      ),
                      color: Colors.blueGrey[400],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                      ),
                      color: Colors.blueGrey[400],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu_book,
                      ),
                      color: Colors.blueGrey[400],
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
