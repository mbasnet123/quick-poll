import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_poll/home_screen.dart';
import '../app/config/route/paths.dart';
import 'app_controller.dart';
import 'app_state.dart';

class AppStateObserver extends ConsumerWidget {
  const AppStateObserver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appController);
    debugPrint("observer: appstate is $appState");
    WidgetsBinding.instance.addPostFrameCallback((_) {
      appState.map(
        started: (_) => CircularProgressIndicator(),
        showOnBoarding: (_) => context.goNamed(Paths.homeScreenRoute.routeName),
        authenticated: (_) => context.goNamed(Paths.homeScreenRoute.routeName),
        unAuthenticated: (_) =>
            context.goNamed(Paths.homeScreenRoute.routeName),
      );
    });
    return HomeScreen();


  }
}
