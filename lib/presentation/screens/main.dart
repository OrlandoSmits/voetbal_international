import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/router/app_router.dart';

void main() {
  runApp(VoetbalInternationalApp(appRouter: AppRouter()));
}

class VoetbalInternationalApp extends StatelessWidget {
  final AppRouter appRouter;

  const VoetbalInternationalApp({Key? key, required this.appRouter}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voetbal International',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
