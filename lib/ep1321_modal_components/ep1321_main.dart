import 'package:flutter/material.dart';

main() {
  runApp(ModalComponentsApp());
}

class ModalComponentsApp extends StatelessWidget {
  const ModalComponentsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Model Components"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("show modal"),
            ),
          ],
        ),
      ),
    );
  }
}
