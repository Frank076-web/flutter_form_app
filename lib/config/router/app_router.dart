import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:forms_app/presentation/screens/screens.dart';

class AppRouter {
  static void navigateTo(BuildContext context, String path) {
    context.push(path);
  }

  static void navigateBack(BuildContext context) {
    context.pop();
  }

  static final routerConfig = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/cubits',
        builder: (context, state) => const CubitCounterScreen(),
      ),
    ],
  );
}
