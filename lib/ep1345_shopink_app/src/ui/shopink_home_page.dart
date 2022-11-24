import 'package:flutter/material.dart';

class ShopinkHomePage extends StatefulWidget {
  const ShopinkHomePage({Key? key}) : super(key: key);

  @override
  State<ShopinkHomePage> createState() => _ShopinkHomePageState();
}

class _ShopinkHomePageState extends State<ShopinkHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    child: const Icon(
                      Icons.menu,
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.grey[300],
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Shopink",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                    child: const Icon(
                      Icons.notifications_none,
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.grey[300],
                  ),
                ],
              ),
            ),
            Container(
              height: 140,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrival",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              margin: EdgeInsets.only(left: 16),
              color: Colors.red[100],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Seller",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
