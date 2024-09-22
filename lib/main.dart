import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/simple%20provider.dart';
import 'package:provider_tutorial/provider_2/name_change_provider.dart';
import 'package:provider_tutorial/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => CounterProvider()
        ),
        ChangeNotifierProvider(
            create: (context) => NameChangeProvider()
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}