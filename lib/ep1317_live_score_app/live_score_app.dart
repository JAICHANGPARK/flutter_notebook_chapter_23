import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1317_live_score_app/src/ui/live_score_home_page.dart';
import 'package:go_router/go_router.dart';

class LiveScoreApp extends StatelessWidget {
  LiveScoreApp({super.key});

  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const LiveScoreHomePage(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
