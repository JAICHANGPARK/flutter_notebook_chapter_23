import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1313_a_new_look_for_the_ufc_app/src/ui/ufc_appbar_widget.dart';

class UfcDetailPage extends StatefulWidget {
  const UfcDetailPage({Key? key}) : super(key: key);

  @override
  State<UfcDetailPage> createState() => _UfcDetailPageState();
}

class _UfcDetailPageState extends State<UfcDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              UfcAppBarWidget(),

              Container(
                margin: EdgeInsets.only(top: 24),
                height: 540,
                color: Colors.blue,
              ),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
