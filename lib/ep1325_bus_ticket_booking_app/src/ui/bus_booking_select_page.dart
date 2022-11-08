import 'package:flutter/material.dart';

class BusBookingSelectPage extends StatefulWidget {
  const BusBookingSelectPage({Key? key}) : super(key: key);

  @override
  State<BusBookingSelectPage> createState() => _BusBookingSelectPageState();
}

class _BusBookingSelectPageState extends State<BusBookingSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Sear"),
        backgroundColor: Colors.grey[100],
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
    );
  }
}
