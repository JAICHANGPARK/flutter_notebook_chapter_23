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
            )
          ],
        ),
      ),
    );
  }
}
