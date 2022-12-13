import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridersewa/features/splash_page/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.robotoFlexTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: const AppBarTheme(
            color: Color.fromRGBO(94, 20, 161, 1),
          ),
        ),
        home: const SplashPage());
  }
}
