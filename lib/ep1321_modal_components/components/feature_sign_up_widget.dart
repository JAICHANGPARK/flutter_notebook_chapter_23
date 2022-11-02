import 'package:flutter/material.dart';

class FeatureSignUpWidget extends StatefulWidget {
  const FeatureSignUpWidget({Key? key}) : super(key: key);

  @override
  State<FeatureSignUpWidget> createState() => _FeatureSignUpWidgetState();
}

class _FeatureSignUpWidgetState extends State<FeatureSignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Features"),
            Row(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Getting started"),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(2),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          child: Text("New"),
                        ),
                      ],
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
