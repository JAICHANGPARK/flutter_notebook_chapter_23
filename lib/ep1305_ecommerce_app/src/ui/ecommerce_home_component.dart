import 'package:flutter/material.dart';

class EcommerceHomeComponent extends StatefulWidget {
  const EcommerceHomeComponent({Key? key}) : super(key: key);

  @override
  State<EcommerceHomeComponent> createState() => _EcommerceHomeComponentState();
}

class _EcommerceHomeComponentState extends State<EcommerceHomeComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.blue,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Dreamwalker,",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("What one you buying today?"),
                  ],
                ),
                Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Icon(Icons.shopping_bag_outlined),
                        ),
                        Positioned(child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          child: Text("2", style: TextStyle(
                            fontSize: 10
                          ),),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 84,
            color: Colors.red,
          ),
          Container(
            height: 72,
            color: Colors.green,
          ),
          Container(
            height: 300,
            color: Colors.orange,
          ),
          Container(
            height: 300,
            color: Colors.indigo,
          )
        ],
      ),
    );
  }
}
