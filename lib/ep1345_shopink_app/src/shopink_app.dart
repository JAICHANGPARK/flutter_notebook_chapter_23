import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1345_shopink_app/src/ui/shopink_home_page.dart';
import 'package:go_router/go_router.dart';

class ShopinkApp extends StatelessWidget {
  ShopinkApp({Key? key}) : super(key: key);

  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const ShopinkHomePage(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
