import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1331_property_rental_app/src/ui/property_rental_home_page.dart';
import 'package:go_router/go_router.dart';

import 'src/ui/property_rental_detail_page.dart';

class PropertyRentalApp extends StatelessWidget {
  PropertyRentalApp({Key? key}) : super(key: key);
  final _router = GoRouter(routes: [
    ShellRoute(
        routes: [
          GoRoute(
              path: "/",
              builder: (context, state) {
                return const PropertyRentalHomePage();
              }),
          GoRoute(
              path: "detail",
              builder: (context, state) {
                return const PropertyRentalDetailPage();
              })
        ],
        builder: (context, state, child) {
          return const PropertyRentalHomePage();
        })
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
