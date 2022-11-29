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
          Divider(
            height: 24,
            color: Colors.grey[300],
          ),
          Container(
            height: 350,
            color: Colors.blue,
          ),
          Divider(
            height: 32,
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Subtotal: ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      "\$800.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Delivery Fee: ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      "\$10.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Discount: ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text("10%"),
                  ],
                ),
                Divider(
                  height: 42,
                  color: Colors.grey[300],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Total: "),
                    Text("\$780.00"),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Text(
                      "Check out",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
