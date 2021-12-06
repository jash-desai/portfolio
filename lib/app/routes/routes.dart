import 'package:flutter/material.dart';
import '/meta/pages/splash/splash.page.dart';
import '/meta/pages/home/home.portfolio.dart';

class AppRouter {
  static const String home = "/home";
  static const String splashRoute = "/splash";

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        {
          return MaterialPageRoute(
            builder: (_) => const Home(),
          );
        }
      case splashRoute:
        {
          return MaterialPageRoute(
            builder: (_) => const SplashScreen(),
          );
        }
    }
  }
}
