import "package:flutter/material.dart";
import "package:flutter_native_splash/flutter_native_splash.dart";

import "up_todo.dart";

void main() {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const UpTodo());
}
