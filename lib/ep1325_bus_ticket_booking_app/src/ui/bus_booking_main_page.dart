import 'package:flutter/material.dart';

class BusBookingMainPage extends StatefulWidget {
  const BusBookingMainPage({Key? key}) : super(key: key);

  @override
  State<BusBookingMainPage> createState() => _BusBookingMainPageState();
}

class _BusBookingMainPageState extends State<BusBookingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Booking",
          )
        ],
      ),
    );
  }
}
