//Switch para generar los nombres de rutas
import 'package:commons/modules.dart';
import 'package:flutter/material.dart';
import 'package:salonpro/main.dart';
import 'package:auth/module.dart';
import 'package:go_router/go_router.dart';
import 'package:salonpro/presentation/screens/home_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutesName.splash,
  routes: [
    GoRoute(
      path: RoutesName.login,
      name: RoutesName.login,
      builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) => _fadeTransitionPage(
        context: context,
        state: state,
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
      path: RoutesName.splash,
      name: RoutesName.splash,
      builder: (context, state) => const SplashScreen(),
      pageBuilder: (context, state) => _fadeTransitionPage(
        context: context,
        state: state,
        child: const SplashScreen(),
      ),
    ),
    GoRoute(
      path: RoutesName.home,
      name: RoutesName.home,
      builder: (context, state) => const HomeScreen(),
      pageBuilder: (context, state) => _fadeTransitionPage(
        context: context,
        state: state,
        child: const HomeScreen(),
      ),
    ),
  ],
  errorPageBuilder: (context, state) => const MaterialPage(
    child: Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    ),
  ),
);

Page<void> _fadeTransitionPage({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
