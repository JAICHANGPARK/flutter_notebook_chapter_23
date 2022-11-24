import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopinkApp extends StatelessWidget {
   ShopinkApp({Key? key}) : super(key: key);

  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router();
  }
}
