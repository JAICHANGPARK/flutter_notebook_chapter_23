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
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hello Dreamwalker,",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("What one you buying today?"),
                  ],
                ),
                const Spacer(),
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
                        const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            size: 28,
                          ),
                        ),
                        const Positioned(
                            right: 4,
                            top: 4,
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.red,
                              child: Text(
                                "2",
                                style: TextStyle(fontSize: 10),
                              ),
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
