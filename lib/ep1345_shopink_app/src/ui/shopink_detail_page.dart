import 'package:flutter/material.dart';

class ShopinkDetailPage extends StatefulWidget {
  const ShopinkDetailPage({Key? key}) : super(key: key);

  @override
  State<ShopinkDetailPage> createState() => _ShopinkDetailPageState();
}

class _ShopinkDetailPageState extends State<ShopinkDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  radius: 24,
                  child: Icon(
                    Icons.keyboard_arrow_left_sharp,
                  ),
                ),
                Expanded(child: Center(child: Text("Details Products"),)),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Icon(
                    Icons.more_horiz,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
