import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../features/home/views/home_screen.dart";
import "../features/introduction/views/introduction_screen.dart";

class AppRoutes {
  final GoRouter goRouter = GoRouter(
    initialLocation: "/intro-screen",
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (final BuildContext context, final GoRouterState state) =>
            const HomeScreen(),
      ),
      GoRoute(
        path: "/intro-screen",
        builder: (final BuildContext context, final GoRouterState state) =>
            const IntroductionScreen(),
      ),
    ],
  );
}
