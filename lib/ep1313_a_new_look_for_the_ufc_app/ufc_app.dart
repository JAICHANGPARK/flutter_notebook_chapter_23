import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewUfcApp extends StatelessWidget {
  NewUfcApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: "/",
    routes: [],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
