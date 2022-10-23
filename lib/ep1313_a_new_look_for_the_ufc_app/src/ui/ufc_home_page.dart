import 'package:flutter/material.dart';


class NewUfcHomePage extends StatefulWidget {
  const NewUfcHomePage({Key? key}) : super(key: key);

  @override
  State<NewUfcHomePage> createState() => _NewUfcHomePageState();
}

class _NewUfcHomePageState extends State<NewUfcHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Logo"),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.menu))
              ],
            )
          ],
        ),
      ),
    );
  }
}
