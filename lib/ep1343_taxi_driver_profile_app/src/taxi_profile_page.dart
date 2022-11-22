import 'package:flutter/material.dart';

class TaxiProfilePage extends StatefulWidget {
  const TaxiProfilePage({Key? key}) : super(key: key);

  @override
  State<TaxiProfilePage> createState() => _TaxiProfilePageState();
}

class _TaxiProfilePageState extends State<TaxiProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Driving Profile",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Updated today at 5:03",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 32,top: 24
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!,
                  spreadRadius: 1,
                  blurRadius: 2,
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 24,
                  ),
                  height: 100,
                  color: Colors.black,
                ),
                Text(
                  "It's all good!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Text(
                  "You are driving better than anyone.",
                  style: TextStyle(height: 2, fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16),
                ),
                Text(
                  "Good job, just keep it up",
                  style: TextStyle(height: 2, fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
