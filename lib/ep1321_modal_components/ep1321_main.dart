import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 24,
                            bottom: 16,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Share Project",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Card(
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16),
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
                              ),
                              Card(
                                elevation: 4,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Expanded(child: SingleChildScrollView()),
                        Divider(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.code,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Get Embed Code",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.link_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Copy Link",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                  child: Center(
                                    child: Text(
                                      "Done",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
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
