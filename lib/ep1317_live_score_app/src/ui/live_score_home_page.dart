import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LiveScoreHomePage extends StatefulWidget {
  const LiveScoreHomePage({Key? key}) : super(key: key);

  @override
  State<LiveScoreHomePage> createState() => _LiveScoreHomePageState();
}

class _LiveScoreHomePageState extends State<LiveScoreHomePage> {
  int selectedDate = 0;
  int topMenuBarIndex = 0;

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
                    Container(
                      height: 68,
                      child: Row(
                        children: [
                          Expanded(
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
                          )),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  '⚽',
                                  style: TextStyle(fontSize: 32),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: const Center(
                                child: Text(
                                  '🏀',
                                  style: TextStyle(fontSize: 32),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: const Center(
                                child: Text(
                                  '🥎',
                                  style: TextStyle(fontSize: 32),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: const Center(
                                child: Text(
                                  '⚾',
                                  style: TextStyle(fontSize: 32),
                                ),
                              ),
                            ),
                          ),
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
