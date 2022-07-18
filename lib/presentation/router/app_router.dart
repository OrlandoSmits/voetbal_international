import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch(routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        throw Exception('Route not recognized');
    }
  }
}