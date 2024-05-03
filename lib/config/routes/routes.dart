import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme_switch_bloc/features/pages/second_screen.dart';

import '../../core/utils/routes_utils.dart';
import '../../features/pages/home_screen.dart';

class AppRouter {
  final GlobalKey<NavigatorState> rootNavigatorKey;

  AppRouter({
    required this.rootNavigatorKey,
  });

  late final GoRouter router = GoRouter(
    initialLocation: PAGES.home.screenPath,
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PAGES.home.screenPath,
        name: PAGES.home.screenName,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PAGES.second.screenPath,
        name: PAGES.second.screenName,
        builder: (context, state) {
          return const SecondScreen();
        },
      ),
    ],
  );
}
