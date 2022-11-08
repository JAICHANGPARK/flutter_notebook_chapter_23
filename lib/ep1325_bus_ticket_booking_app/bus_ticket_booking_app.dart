import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1325_bus_ticket_booking_app/src/ui/bus_booking_detail_page.dart';
import 'package:flutter_notebook_chapter_23/ep1325_bus_ticket_booking_app/src/ui/bus_booking_main_page.dart';
import 'package:flutter_notebook_chapter_23/ep1325_bus_ticket_booking_app/src/ui/bus_booking_select_page.dart';
import 'package:go_router/go_router.dart';

class BusTicketBookingApp extends StatelessWidget {
  BusTicketBookingApp({Key? key}) : super(key: key);
  final appRoute = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const BusBookingMainPage(),
        routes: [
          ShellRoute(
            routes: [
              GoRoute(
                path: "detail",
                builder: (context, state) => const BusBookingDetailPage(),
              ),
              GoRoute(
                path: "seat",
                builder: (context, state) => const BusBookingSelectPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoute,
    );
  }
}
