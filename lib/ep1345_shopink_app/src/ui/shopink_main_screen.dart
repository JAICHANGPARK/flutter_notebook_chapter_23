import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1345_shopink_app/src/controller/shopink_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShopinkMainScreen extends StatefulWidget {
  const ShopinkMainScreen({super.key});

  @override
  State<ShopinkMainScreen> createState() => _ShopinkMainScreenState();
}

class _ShopinkMainScreenState extends State<ShopinkMainScreen> {
  List<String> _tabItems = ["All", "Brend0", "Brend1", "Brend2", "Brend3", "Brend4"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 26,
                foregroundColor: Colors.black,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.menu,
                ),
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
                foregroundColor: Colors.black,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.notifications_none,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 140,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "New Arrival",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
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
                  height: 230,
                  margin: const EdgeInsets.only(left: 16),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 170,
                          margin: const EdgeInsets.only(right: 16),
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      bottom: 0,
                                      right: 0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Shoes Title Shoes Title Shoes Title,",
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: 8),
                                            child: Text(
                                              "Dream's Shoes",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "\$120.11",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[200],
                                        foregroundColor: Colors.grey,
                                        radius: 24,
                                        child: const Icon(
                                          Icons.favorite_border,
                                          size: 28,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
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
                      const Text(
                        "Best Seller",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
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
                Consumer(builder: (context, ref, _) {
                  final selectedIndex = ref.watch(shopinkTabMenuIndex);
                  return Container(
                    height: 64,
                    margin: const EdgeInsets.only(left: 16, bottom: 16),
                    color: Colors.orangeAccent,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _tabItems.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Center(child: Text("${_tabItems[index]}")),
                        );
                      },
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: [
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.red,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
