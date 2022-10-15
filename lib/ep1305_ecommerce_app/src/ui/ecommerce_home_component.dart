import 'package:flutter/material.dart';

class EcommerceHomeComponent extends StatefulWidget {
  const EcommerceHomeComponent({Key? key}) : super(key: key);

  @override
  State<EcommerceHomeComponent> createState() => _EcommerceHomeComponentState();
}

class _EcommerceHomeComponentState extends State<EcommerceHomeComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.blue,
          ),
          Container(
            height: 84,
            color: Colors.red,
          ),
          Container(
            height: 72,
            color: Colors.green,
          ),
          Container(
            height: 300,
            color: Colors.orange,
          ),
          Container(
            height: 300,
            color: Colors.indigo,
          )
        ],
      ),
    );
  }
}
