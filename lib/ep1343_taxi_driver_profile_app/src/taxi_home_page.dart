import 'package:flutter/material.dart';


class TaxiHomePage extends StatelessWidget {
  const TaxiHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){},
              child: CircleAvatar(
                radius: 64,
                child: Text("Profile"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
