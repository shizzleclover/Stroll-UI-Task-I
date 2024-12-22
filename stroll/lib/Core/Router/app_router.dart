import 'router.dart';
import 'package:flutter/material.dart';
import '../../Features/UI/home_ui.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //!Home screen --> Main Screen
      case Routes.home:
      return MaterialPageRoute(builder:(_) => const HomeScreen());

      default:
      return MaterialPageRoute(builder: (_) => const Scaffold(
        body: Center(
          child: Text("No route found"),
        ),
      ));
    }
  }
}