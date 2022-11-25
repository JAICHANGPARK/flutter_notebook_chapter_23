import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1345_shopink_app/src/controller/shopink_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
                      height: 220,
                      margin: const EdgeInsets.only(left: 16),
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
                    Container(
                      height: 64,
                      margin: const EdgeInsets.only(left: 16, bottom: 16),
                      color: Colors.orangeAccent,
                    ),
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
        ),
      ),
      bottomNavigationBar: Consumer(builder: (context, ref, _) {
        final index = ref.watch(shopinkMenuIndex);
        return BottomAppBar(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            height: 84,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 32,
                      color: index == 0 ? Colors.black : Colors.grey,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    index == 0
                        ? const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.black,
                          )
                        : Container(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 32,
                      color: index == 1 ? Colors.black : Colors.grey,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    index == 1
                        ? const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.black,
                          )
                        : Container(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 32,
                      color: index == 2 ? Colors.black : Colors.grey,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    index == 2
                        ? const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.black,
                          )
                        : Container(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.perm_identity,
                      size: 32,
                      color: index == 3 ? Colors.black : Colors.grey,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    index == 3
                        ? const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.black,
                          )
                        : Container(),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}