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
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          elevation: 4,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Booking",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.confirmation_number,
              ),
              label: "Tickets",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
