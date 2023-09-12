import 'package:flutter/material.dart';
import 'routes/app_router.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.pink,
          labelStyle: TextStyle(color: Colors.green), // color for text
        ),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
