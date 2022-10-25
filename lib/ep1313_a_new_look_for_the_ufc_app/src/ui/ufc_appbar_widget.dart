import 'package:flutter/material.dart';

class UfcAppBarWidget extends StatelessWidget {
  const UfcAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/UFC_logo.svg/1280px-UFC_logo.svg.png",
            width: 64,
            color: const Color.fromRGBO(208, 9, 8, 1),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          )
        ],
      ),
    );
  }
}
