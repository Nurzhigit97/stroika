import 'package:flutter/material.dart';
import 'package:stroika/shared/app_router/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final appRoute = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Stroika',
      debugShowCheckedModeBanner: false,
      routerConfig: appRoute.config(),
    );
  }
}
