import 'package:flutter/material.dart';

class TaxiProfilePage extends StatefulWidget {
  const TaxiProfilePage({Key? key}) : super(key: key);

  @override
  State<TaxiProfilePage> createState() => _TaxiProfilePageState();
}

class _TaxiProfilePageState extends State<TaxiProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            const Text(
              "Driving Profile",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Updated today at 5:03",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 32, top: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!,
                  spreadRadius: 1,
                  blurRadius: 2,
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 24,
                  ),
                  height: 100,
                  color: Colors.black,
                ),
                const Text(
                  "It's all good!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const Text(
                  "You are driving better than anyone.",
                  style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const Text(
                  "Good job, just keep it up",
                  style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Not safe trips"),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  ),
                  Text(
                    "What ar we lookg at",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[400],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
