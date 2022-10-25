import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1313_a_new_look_for_the_ufc_app/src/ui/ufc_detail_page.dart';
import 'package:flutter_notebook_chapter_23/ep1313_a_new_look_for_the_ufc_app/src/ui/ufc_home_page.dart';
import 'package:go_router/go_router.dart';

class NewUfcApp extends StatelessWidget {
  NewUfcApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) {
          return const NewUfcHomePage();
        },
        routes: [
          GoRoute(
            path: "detail",
            builder: (context, state) => const UfcDetailPage(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
