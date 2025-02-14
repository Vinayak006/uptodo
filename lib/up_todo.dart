import "package:flutter/material.dart";
import "package:flutter_native_splash/flutter_native_splash.dart";

import "config/routes.dart";

class UpTodo extends StatelessWidget {
  const UpTodo({super.key});

  @override
  Widget build(final BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp.router(
      routerConfig: AppRoutes().goRouter,
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        useMaterial3: true,
      ),
    );
  }
}
