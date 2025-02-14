import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../features/home/views/home_screen.dart";

class AppRoutes {
  final GoRouter goRouter = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (final BuildContext context, final GoRouterState state) =>
            const HomeScreen(),
      ),
    ],
  );
}
