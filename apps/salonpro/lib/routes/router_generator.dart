import 'package:commons/modules.dart';
import 'package:flutter/material.dart';
import 'package:auth/module.dart';
import 'package:go_router/go_router.dart';
import 'package:salonpro/presentation/screens/home_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutesName.splash,
  routes: [
    //auth
    GoRoute(
        path: RoutesName.login,
        name: RoutesName.login,
        pageBuilder: (context, state) => _fadeTransitionPage(
              context: context,
              state: state,
              child: const LoginScreen(
                appTitle: 'SalonPro',
                imageUrl: 'https://2356021.fs1.hubspotusercontent-na1.net/hubfs/2356021/mujer-morena-arreglandose-pelo.webp',
              ),
            ),
        routes: [
          GoRoute(
            path: RoutesName.resetPassword,
            name: RoutesName.resetPassword,
            pageBuilder: (context, state) => _fadeTransitionPage(
              context: context,
              state: state,
              child: ResetPasswordScreen(),
            ),
          ),
        ]),

    GoRoute(
      path: RoutesName.splash,
      name: RoutesName.splash,
      pageBuilder: (context, state) => _fadeTransitionPage(
        context: context,
        state: state,
        child: const SplashScreen(),
      ),
    ),
    //home
    GoRoute(
      path: RoutesName.home,
      name: RoutesName.home,
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
