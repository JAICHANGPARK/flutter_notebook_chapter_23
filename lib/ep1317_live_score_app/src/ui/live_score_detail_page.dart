import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LiveScoreDetailPage extends StatefulWidget {
  const LiveScoreDetailPage({Key? key}) : super(key: key);

  @override
  State<LiveScoreDetailPage> createState() => _LiveScoreDetailPageState();
}

class _LiveScoreDetailPageState extends State<LiveScoreDetailPage> {
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
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                        child: Icon(Icons.notifications_none),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 64,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 82,
                    margin: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
