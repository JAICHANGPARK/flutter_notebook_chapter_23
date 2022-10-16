import 'package:flutter/material.dart';

class EcommerceMenu {
  IconData? iconData;
  String? title;

  EcommerceMenu({
    this.iconData,
    this.title,
  });
}

class EcommerceHomeComponent extends StatefulWidget {
  const EcommerceHomeComponent({Key? key}) : super(key: key);

  @override
  State<EcommerceHomeComponent> createState() => _EcommerceHomeComponentState();
}

class _EcommerceHomeComponentState extends State<EcommerceHomeComponent> {
  List<EcommerceMenu> _menuItems = [
    EcommerceMenu(
      iconData: Icons.phone_android,
      title: "All",
    ),
    EcommerceMenu(
      iconData: Icons.settings_display,
      title: "Computers",
    ),
    EcommerceMenu(
      iconData: Icons.headphones,
      title: "Headsets",
    ),
    EcommerceMenu(
      iconData: Icons.phone_android_sharp,
      title: "SmartPhone",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello Dreamwalker,",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "What one you buying today?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: const [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            size: 28,
                          ),
                        ),
                        Positioned(
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
            height: 58,
            // color: Colors.red,
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(32),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                    ),
                    border: InputBorder.none,
                    hintText: "Search products"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            height: 54,
            // color: Colors.green,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _menuItems.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  margin: EdgeInsets.only(right: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(
                        _menuItems[index].iconData,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        _menuItems[index].title ?? "-",
                      )
                    ],
                  ),
                );
              },
            ),
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
