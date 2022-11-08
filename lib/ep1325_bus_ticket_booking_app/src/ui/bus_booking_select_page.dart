import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BusBookingSelectPage extends StatefulWidget {
  const BusBookingSelectPage({Key? key}) : super(key: key);

  @override
  State<BusBookingSelectPage> createState() => _BusBookingSelectPageState();
}

class _BusBookingSelectPageState extends State<BusBookingSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Select Sear"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
    );
  }
}
