import "package:flutter/material.dart";

import "config/routes.dart";

class UpTodo extends StatelessWidget {
  const UpTodo({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp.router(
        routerConfig: AppRoutes().goRouter,
        title: "Flutter Demo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Poppins",
          useMaterial3: true,
        ),
      );
}
