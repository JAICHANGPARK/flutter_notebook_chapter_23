import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1325_bus_ticket_booking_app/bus_ticket_booking_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    ProviderScope(
      child: BusTicketBookingApp(),
    ),
  );
}
