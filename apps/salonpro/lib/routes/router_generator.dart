//Switch para generar los nombres de rutas
import 'package:flutter/material.dart';
import 'package:salonpro/main.dart';
import 'package:salonpro/routes/routes_name.dart';
import 'package:auth/module.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return _fadeRoute(const LoginScreen(), RoutesName.login);
      case RoutesName.splash:
        return _fadeRoute(const SplashScreen(), RoutesName.splash);
      case RoutesName.home:
        return _fadeRoute(const MyHomePage(title: ''), RoutesName.home);
      default:
        return _fadeRoute(const MyHomePage(title: ''), RoutesName.home);
    }
  }

  //funciona para configurar el nombre y url de la ruta --- Añade un fade al transicionar de screen
  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (_, __, ___) => child,
        transitionsBuilder: (_, animation, __, ___) =>
            //is client use a web device
            // kIsWeb
            FadeTransition(opacity: animation, child: child));
    //slide for smartphones
    // : CupertinoPageTransition(
    //     primaryRouteAnimation: animation,
    //     secondaryRouteAnimation: __,
    //     linearTransition: true,
    //     child: child));
  }
}