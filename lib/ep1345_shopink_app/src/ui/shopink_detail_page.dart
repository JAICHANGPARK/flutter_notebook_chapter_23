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
      backgroundColor: Colors.grey[200],
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  const Text("Shoe Title"),
                  Row(
                    children: [
                      const Text("Dream's Shoes"),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.red,
                        child: const Icon(Icons.favorite),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text("\$100.99"),
                      Text(
                        "\$110.00",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 72,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Center(
                            child: Text("${35 + index}"),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
