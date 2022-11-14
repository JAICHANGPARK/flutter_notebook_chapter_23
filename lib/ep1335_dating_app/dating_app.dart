import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1335_dating_app/src/ui/dating_app_home_screen.dart';
import 'package:go_router/go_router.dart';

class DatingApp extends StatelessWidget {
  const DatingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => DatingAppHomeScreen(),
          ),
        ],
      ),
    );
  }
}
