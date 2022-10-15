import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1305_ecommerce_app/src/ui/ecommerce_main_page.dart';
import 'package:go_router/go_router.dart';

class EcommerceApp extends StatelessWidget {
  EcommerceApp({Key? key}) : super(key: key);
  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const EcommerceMainPage(),
    ),
  ], initialLocation: "/");

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,

    );
  }
}
