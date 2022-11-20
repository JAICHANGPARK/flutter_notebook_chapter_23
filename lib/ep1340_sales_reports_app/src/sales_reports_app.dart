import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1340_sales_reports_app/src/ui/sales_reports_home_page.dart';
import 'package:go_router/go_router.dart';

class SalesReportsApp extends StatelessWidget {
  SalesReportsApp({Key? key}) : super(key: key);

  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SalesReportHomePage(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromRGBO(225, 252, 186, 1),
        colorScheme: ColorScheme.fromSeed(
          primaryContainer: const Color.fromRGBO(40, 49, 62, 1),
          seedColor: const Color.fromRGBO(225, 252, 186, 1),
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
            headlineLarge: TextStyle(
              fontSize: 60,
              color: Color.fromRGBO(40, 49, 62, 1),
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(40, 49, 62, 1),
            )),
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
    );
  }
}
