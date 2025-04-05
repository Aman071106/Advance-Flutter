import 'package:flutter/material.dart';
import 'package:gorouter_proj/project/routes/app_route_config.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = MyAppRouter.returnRouter();

    return MaterialApp.router(routerConfig: router);
  }
}
