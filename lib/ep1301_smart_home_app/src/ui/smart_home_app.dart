import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1301_smart_home_app/src/ui/smart_home_main_page.dart';
import 'package:go_router/go_router.dart';

class SmartHomeApp extends StatelessWidget {
  SmartHomeApp({Key? key}) : super(key: key);
  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, index) => const SmartHomeMainPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.light(
        // useMaterial3: true
      ),
    );
  }
}
