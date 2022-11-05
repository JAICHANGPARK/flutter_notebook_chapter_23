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
          Container(
            decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(6)),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Text(
                  "From",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
