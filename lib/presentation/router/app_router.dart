import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/router/arguments/ArticleArguments.dart';
import 'package:voetbal_international/presentation/screens/articles/article_screen.dart';
import 'package:voetbal_international/presentation/screens/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case ArticleScreen.routeName:
        return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ArticleScreen());
      default:
        throw Exception('Route not recognized');
    }
  }
}
