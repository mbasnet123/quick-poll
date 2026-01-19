import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Make sure you're using the right import
import 'app_state.dart';

// Use NotifierProvider.autoDispose or just NotifierProvider depending on your needs
final appController = NotifierProvider<AppStateNotifier, AppState>(
  () => AppStateNotifier(),
);

class AppStateNotifier extends Notifier<AppState> {
  @override
  AppState build() {
    // This replaces the initial state in StateNotifier
    // You can also trigger async logic here if needed (but usually do it via a method)
    appStarted();
    return const AppState.started();
  }

  Future<void> appStarted() async {
    // Simulate async init
    // In real use, you might read from local storage or auth state
    state = AppState.authenticated("user");
  }

  Future<void> completeOnboarding() async {
    // Mark onboarding as complete in storage (simulated)
    state = AppState.authenticated("user");
    debugPrint(state.toString());
  }
}