import 'package:flutter/cupertino.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(48),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search your data",
                          icon: Icon(
                            CupertinoIcons.search,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
              height: 32,
            ),
            Text(
              "Create",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "New Report",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: TextField(),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: TextField(),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextField(),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextField(),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Lastest Reports"),
                TextButton(
                  onPressed: () {},
                  child: Text("View all"),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
                child: ListView(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
