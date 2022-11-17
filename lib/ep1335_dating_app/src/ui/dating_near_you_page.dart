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
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2,
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
          ],
        ),
      ),
    );
  }
}
