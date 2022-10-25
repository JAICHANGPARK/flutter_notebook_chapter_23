import 'package:flutter/material.dart';

class UfcLabelWidget extends StatelessWidget {
  const UfcLabelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.only(right: 16),
      color: const Color.fromRGBO(208, 9, 8, 1),
      child: Align(
        alignment: Alignment.centerRight,
        child: Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/UFC_logo.svg/1280px-UFC_logo.svg.png",
          width: 84,
          color: Colors.white,
        ),
      ),
    );
  }
}
