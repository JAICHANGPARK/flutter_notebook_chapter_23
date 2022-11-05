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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Column(
        children: [
          Text(
            "Book tickets for your",
            style: GoogleFonts.montserrat(
              fontSize: 24,
            ),
          ),
          Text(
            "next trip",
            style: GoogleFonts.montserrat(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 72,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
