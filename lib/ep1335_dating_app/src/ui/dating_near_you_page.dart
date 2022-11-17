import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DatingNearYouPage extends StatefulWidget {
  const DatingNearYouPage({Key? key}) : super(key: key);

  @override
  State<DatingNearYouPage> createState() => _DatingNearYouPageState();
}

class _DatingNearYouPageState extends State<DatingNearYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back,
                          size: 34,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Near You",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(225, 203, 6, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 2),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          offset: Offset(2, 2),
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
                ],
              ),
            ),
            Expanded(child: Placeholder()),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange[200],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange[200],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange[200],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange[200],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
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
