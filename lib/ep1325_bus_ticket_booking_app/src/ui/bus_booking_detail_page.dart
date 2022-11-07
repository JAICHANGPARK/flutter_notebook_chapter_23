import 'package:flutter/material.dart';

class BusBookingDetailPage extends StatefulWidget {
  const BusBookingDetailPage({Key? key}) : super(key: key);

  @override
  State<BusBookingDetailPage> createState() => _BusBookingDetailPageState();
}

class _BusBookingDetailPageState extends State<BusBookingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        title: Text(
          "Dream > Walker",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 64,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(16),
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list_outlined,
                  ),
                ),
                Text(
                  "Search for Trips",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Expanded(child: SingleChildScrollView()),
        ],
      ),
    );
  }
}
