import 'package:flutter/material.dart';

class SalesReportHomePage extends StatefulWidget {
  const SalesReportHomePage({Key? key}) : super(key: key);

  @override
  State<SalesReportHomePage> createState() => _SalesReportHomePageState();
}

class _SalesReportHomePageState extends State<SalesReportHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(48),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search your data",
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
