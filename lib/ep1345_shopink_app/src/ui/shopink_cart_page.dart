import 'package:flutter/material.dart';

class ShopinkCartPage extends StatefulWidget {
  const ShopinkCartPage({Key? key}) : super(key: key);

  @override
  State<ShopinkCartPage> createState() => _ShopinkCartPageState();
}

class _ShopinkCartPageState extends State<ShopinkCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {

                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    radius: 24,
                    child: Icon(
                      Icons.keyboard_arrow_left_sharp,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "My Cart",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Icon(
                    Icons.more_horiz,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
