import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1321_modal_components/components/share_project_widget.dart';

main() {
  runApp(const ModalComponentsApp());
}

class ModalComponentsApp extends StatelessWidget {
  const ModalComponentsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text("Model Components"),
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
                builder: (context) => const AlertDialog(
                  title: Text("Test"),
                ),
              );
            },
            child: const Text("Defalt Alert Dialog"),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.share),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => ShareProjectModal(),
              );
            },
            label: const Text("show share project modal"),
            // child: Text(""),
          ),
        ],
      ),
    );
  }
}
