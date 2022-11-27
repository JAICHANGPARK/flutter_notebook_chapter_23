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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    radius: 24,
                    child: Icon(
                      Icons.keyboard_arrow_left_sharp,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Details Products",
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
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              color: Colors.grey,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )),
              child: Column(
                children: [],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
