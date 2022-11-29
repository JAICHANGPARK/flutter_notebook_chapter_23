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
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    radius: 24,
                    child: Icon(
                      Icons.keyboard_arrow_left_sharp,
                    ),
                  ),
                ),
                const Expanded(
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
                const CircleAvatar(
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
          Divider(),
          Container(
            height: 350,
            color: Colors.blue,
          ),
          Divider(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Subtotal: "),
                  Text("\$800.00"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Fee: "),
                  Text("\$10.00"),
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
