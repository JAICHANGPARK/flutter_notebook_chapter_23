import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'src/ui/templates_home_page.dart';

class FormsTemplatesApp extends StatelessWidget {
  FormsTemplatesApp({
    super.key,
  });

  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => TemplatesHomePage(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
