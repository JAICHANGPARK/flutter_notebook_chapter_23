import 'package:flutter/material.dart';

class EcommerceDetailPage extends StatefulWidget {
  const EcommerceDetailPage({Key? key}) : super(key: key);

  @override
  State<EcommerceDetailPage> createState() => _EcommerceDetailPageState();
}

class _EcommerceDetailPageState extends State<EcommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Divider(
            height: 0,
            color: Colors.black,
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(36),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Add item to bag",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$549.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
