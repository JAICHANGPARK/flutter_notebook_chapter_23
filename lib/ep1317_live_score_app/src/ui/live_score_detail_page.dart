import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LiveScoreDetailPage extends StatefulWidget {
  const LiveScoreDetailPage({Key? key}) : super(key: key);

  @override
  State<LiveScoreDetailPage> createState() => _LiveScoreDetailPageState();
}

class _LiveScoreDetailPageState extends State<LiveScoreDetailPage> {
  List<String> _menus = ["Info", "Summary", "Stats", "Line-Ups", "Table", "H2H"];

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
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: CircleAvatar(
                          radius: 36,
                          backgroundColor: Colors.white.withOpacity(0.2),
                          foregroundColor: Colors.white,
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Group C",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Champion League"),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.white,
                        child: const Icon(Icons.notifications_none),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    margin: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(),
                              SizedBox(
                                height: 8,
                              ),
                              Text("FC Bayern"),
                              Text("Muchen"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "5 VS 0",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "75'",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Viktoria"),
                              Text("Pizen"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 54,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _menus.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Center(
                            child: Text(
                              _menus[index],
                              style: const TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 64,
                    margin: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Center(
                            child: Text(
                              "Events",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Center(
                            child: Text(
                              "Commentary",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[100],
                              child: const Text(
                                '???',
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Group B",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Champion League",
                                ),
                              ],
                            ),
                            Text(
                              "1 - 0",
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "7'",
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
