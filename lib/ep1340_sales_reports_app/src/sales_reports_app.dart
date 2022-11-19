import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1340_sales_reports_app/src/ui/sales_reports_home_page.dart';
import 'package:go_router/go_router.dart';

class SalesReportsApp extends StatelessWidget {
  SalesReportsApp({Key? key}) : super(key: key);

  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => SalesReportHomePage(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
