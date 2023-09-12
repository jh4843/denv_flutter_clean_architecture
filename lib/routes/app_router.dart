import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import '../home/home_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _authShellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'authShell');
// final _layoutShellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'layoutShell');
// final _drawingShellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'drawingShell');

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>
          const MyHomePage(title: 'Denv Flutter Training'),
    ),
  ],
);
