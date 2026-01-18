import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_poll/core/app/config/route/paths.dart';

import '../../../../home_screen.dart';

class AppRouter {
  static final key = GlobalKey<NavigatorState>();
  static final _shellNavigationKey = GlobalKey<NavigatorState>();
  static final router = GoRouter(
    initialLocation: Paths.appStateObserver.path,
    navigatorKey: key,
    routes: [
      GoRoute(
        path: Paths.homeScreenRoute.path,
        name: Paths.homeScreenRoute.routeName,
        pageBuilder: (context, state) =>
            FadeTransitionPage(key: state.pageKey, child: const HomeScreen()),
      ),
    ],
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({required LocalKey super.key, required super.child})
      : super(
    transitionsBuilder: (c, animation, a2, child) => FadeTransition(
      opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
      child: child,
    ),
  );
}
