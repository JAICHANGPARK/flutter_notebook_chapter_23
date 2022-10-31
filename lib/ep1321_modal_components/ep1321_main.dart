import 'package:flutter/material.dart';

main() {
  runApp(ModalComponentsApp());
}

class ModalComponentsApp extends StatelessWidget {
  const ModalComponentsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ModelComponentPage(),
    );
  }
}

class ModelComponentPage extends StatefulWidget {
  const ModelComponentPage({Key? key}) : super(key: key);

  @override
  State<ModelComponentPage> createState() => _ModelComponentPageState();
}

class _ModelComponentPageState extends State<ModelComponentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Model Components"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Test"),
                ),
              );
            },
            child: Text("Defalt Alert Dialog"),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.share),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              );
            },
            label: Text("show share project modal"),
            // child: Text(""),
          ),
        ],
      ),
    );
  }
}
