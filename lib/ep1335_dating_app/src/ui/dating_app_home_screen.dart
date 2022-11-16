import 'package:flutter/material.dart';

class DatingAppHomeScreen extends StatefulWidget {
  const DatingAppHomeScreen({Key? key}) : super(key: key);

  @override
  State<DatingAppHomeScreen> createState() => _DatingAppHomeScreenState();
}

class _DatingAppHomeScreenState extends State<DatingAppHomeScreen> {
  Color bottomPurpleColor = const Color.fromRGBO(190, 161, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
              child: Row(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(225, 203, 6, 1),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                        ),
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.menu,
                        size: 34,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Discover",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(205, 238, 45, 1),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                        ),
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.search,
                      size: 34,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "New Matched",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                foregroundColor: const Color.fromRGBO(211, 160, 114, 1),
                              ),
                              child: const Text(
                                "View more",
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        margin: const EdgeInsets.only(left: 16, bottom: 8),
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 72,
                                      width: 72,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.pink,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            spreadRadius: 2,
                                          ),
                                          BoxShadow(
                                            color: Colors.black,
                                            spreadRadius: 3,
                                            offset: Offset(2, 2),
                                          ),
                                        ],
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://thispersondoesnotexist.com/image",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Dream Walker",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 16,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Your Dates",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                foregroundColor: const Color.fromRGBO(211, 160, 114, 1),
                              ),
                              child: const Text(
                                "View more",
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 170,
                        margin: const EdgeInsets.only(left: 16, bottom: 8),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 130,
                              margin: const EdgeInsets.only(right: 12, bottom: 3, top: 2, left: 2),
                              decoration: BoxDecoration(
                                color: Colors.teal[200],
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 1,
                                  ),
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 2,
                                    offset: Offset(2, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pink,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          spreadRadius: 2,
                                        ),
                                        BoxShadow(
                                          color: Colors.black,
                                          spreadRadius: 2,
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://thispersondoesnotexist.com/image",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    "Dream Walker",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.location_on,
                                        size: 16,
                                      ),
                                      Text(
                                        "South Korea",
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Near You",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                foregroundColor: const Color.fromRGBO(211, 160, 114, 1),
                              ),
                              child: const Text(
                                "View more",
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 310,
                        margin: const EdgeInsets.only(left: 16, bottom: 32),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 240,
                              margin: const EdgeInsets.only(right: 20, bottom: 4),
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent[100],
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 3,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(3, 3),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2016/11/10/12/32/model-1814199_960_720.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Dream Walker, 00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.location_pin,
                                                  size: 16,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "Seoul, South Korea",
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.pink[100],
                                          border: Border.all(color: Colors.black, width: 2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: bottomPurpleColor,
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.home_filled,
                      color: bottomPurpleColor,
                      size: 32,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Icon(
                      Icons.perm_identity,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
