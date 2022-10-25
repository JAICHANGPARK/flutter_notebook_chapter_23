import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1313_a_new_look_for_the_ufc_app/src/ui/ufc_appbar_widget.dart';
import 'package:flutter_notebook_chapter_23/ep1313_a_new_look_for_the_ufc_app/src/ui/ufc_label_widget.dart';

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
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Lightweight Champion"),
                    ),
                    Expanded(
                        child: Stack(
                      children: [
                        Positioned(
                          left: 16,
                          right: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "DREAMWALKER",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\"DO BRONX\"",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 32,
                          bottom: 0,
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(pi),
                            child: Image.network(
                              "https://cdn.pixabay.com/photo/2019/08/04/06/06/boxing-4383119_960_720.jpg",
                              width: 300,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        )
                      ],
                    )),
                    UfcLabelWidget(),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: const [],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
