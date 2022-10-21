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
            useIndicator: false,
            onDestinationSelected: (idx) {
              setState(() {
                _selectedIndex = idx;
              });
            },
            destinations: [
              const NavigationRailDestination(
                  icon: Icon(
                    Icons.home_work_outlined,
                  ),
                  label: Text("Home"),
                  padding: EdgeInsets.symmetric(vertical: 8)),
              NavigationRailDestination(
                icon: SizedBox(
                  height: 32,
                  width: 32,
                  child: Stack(
                    children: const [
                      Positioned(
                        child: Center(
                          child: Icon(Icons.mail),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                label: const Text("mail"),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
              ),
              const NavigationRailDestination(
                icon: Icon(Icons.chat),
                label: Text("chat"),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
              ),
              const NavigationRailDestination(
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
                      icon: const Icon(
                        Icons.settings,
                      ),
                      color: Colors.blueGrey[400],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.timer,
                      ),
                      color: Colors.blueGrey[400],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                      ),
                      color: Colors.blueGrey[400],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_book,
                      ),
                      color: Colors.blueGrey[400],
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
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
