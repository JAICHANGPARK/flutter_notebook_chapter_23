import 'package:flutter/material.dart';

class DatingAppHomeScreen extends StatefulWidget {
  const DatingAppHomeScreen({Key? key}) : super(key: key);

  @override
  State<DatingAppHomeScreen> createState() => _DatingAppHomeScreenState();
}

class _DatingAppHomeScreenState extends State<DatingAppHomeScreen> {
  Color bottomPurpleColor = Color.fromRGBO(190, 161, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: bottomPurpleColor,
        child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.home_filled,
                      color: bottomPurpleColor,
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Expanded(child: Container()),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
