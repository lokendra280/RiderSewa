import 'package:flutter/material.dart';
import 'package:ridersewa/features/splash_page/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Color(0xff070B86),
          ),
        ),
        home: const SplashPage());
  }
}
