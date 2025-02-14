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
        scaffoldBackgroundColor: const Color(0x000000ff),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0x000000ff),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          displayMedium: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          displaySmall: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          headlineSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          titleSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          labelMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          labelSmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll<TextStyle>(
              TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
            elevation: WidgetStatePropertyAll<double>(0),
            shape: WidgetStatePropertyAll<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),
            backgroundColor: WidgetStatePropertyAll<Color>(
              Color(0xFF8875FF),
            ),
            foregroundColor: WidgetStatePropertyAll<Color>(
              Color(0xFFFFFFFF),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: const WidgetStatePropertyAll<TextStyle>(
              TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
            foregroundColor: WidgetStatePropertyAll<Color>(
              const Color(0xFFFFFFFF).withValues(alpha: 0.44),
            ),
          ),
        ),
        disabledColor: const Color(0xFFAFAFAF),
        highlightColor: const Color(0xFFFFFFFF).withValues(alpha: 0.87),
        hintColor: const Color(0xFFFFFFFF).withValues(alpha: 0.87),
        fontFamily: "Poppins",
        useMaterial3: true,
      ),
    );
  }
}
