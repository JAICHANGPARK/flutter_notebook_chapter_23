import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LiveScoreMenu {
  int index;
  String title;

  LiveScoreMenu({
    required this.index,
    required this.title,
  });
}

class LiveScoreHomePage extends StatefulWidget {
  const LiveScoreHomePage({Key? key}) : super(key: key);

  @override
  State<LiveScoreHomePage> createState() => _LiveScoreHomePageState();
}

class _LiveScoreHomePageState extends State<LiveScoreHomePage> {
  int selectedDate = 0;
  int topMenuBarIndex = 0;

  List<LiveScoreMenu> menuItems = [
    LiveScoreMenu(title: '⚽', index: 0),
    LiveScoreMenu(title: '🏀', index: 1),
    LiveScoreMenu(title: '🥎', index: 2),
    LiveScoreMenu(title: '⚾', index: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blueGrey,
                    Colors.blueGrey[600]!,
                    Colors.blueGrey[400]!,
                    // Colors.blueGrey[300]!,
                    Colors.brown[200]!,
                    Colors.brown[200]!,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 8,
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      height: 68,
                      child: Row(
                        children: [
                          Expanded(
                              child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: const Icon(Icons.menu),
                                  onPressed: () {},
                                  color: Colors.white,
                                  iconSize: 32,
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              flex: 4,
                              child: Row(
                                  children: menuItems
                                      .map(
                                        (e) => Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                topMenuBarIndex = e.index;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(32),
                                                color: e.index == topMenuBarIndex
                                                    ? Colors.white
                                                    : Colors.white.withOpacity(0.2),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '${e.title}',
                                                  style: TextStyle(fontSize: 32),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList())),
                          // Expanded(
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(32),
                          //       color: Colors.white,
                          //     ),
                          //     child: const Center(
                          //       child: Text(
                          //         '⚽',
                          //         style: TextStyle(fontSize: 32),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Expanded(
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(32),
                          //       color: Colors.white.withOpacity(0.2),
                          //     ),
                          //     child: const Center(
                          //       child: Text(
                          //         '🏀',
                          //         style: TextStyle(fontSize: 32),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Expanded(
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(32),
                          //       color: Colors.white.withOpacity(0.2),
                          //     ),
                          //     child: const Center(
                          //       child: Text(
                          //         '🥎',
                          //         style: TextStyle(fontSize: 32),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Expanded(
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(32),
                          //       color: Colors.white.withOpacity(0.2),
                          //     ),
                          //     child: const Center(
                          //       child: Text(
                          //         '⚾',
                          //         style: TextStyle(fontSize: 32),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      height: 64,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final day = DateFormat("dd MMM").format(
                            DateTime.now().add(
                              Duration(days: index),
                            ),
                          );
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedDate = index;
                                });
                              },
                              child: Center(
                                child: Text(
                                  "$day",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: selectedDate == index ? Colors.white : Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Expanded(child: Placeholder()),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
