import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusBookingHomeScreen extends StatefulWidget {
  const BusBookingHomeScreen({Key? key}) : super(key: key);

  @override
  State<BusBookingHomeScreen> createState() => _BusBookingHomeScreenState();
}

class _BusBookingHomeScreenState extends State<BusBookingHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Book tickets for your",
          style: GoogleFonts.montserrat(),
        ),
        Text("next trip")
      ],
    );
  }
}
