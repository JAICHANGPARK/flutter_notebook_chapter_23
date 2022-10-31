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
                builder: (context) => Material(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Share Project"),
                            Card(
                              elevation: 4,
                              child: Row(
                                children: [
                                  Text(
                                    "Manage",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.settings,
                                      ))
                                ],
                              ),
                            ),
                            Card(
                              elevation: 4,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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
