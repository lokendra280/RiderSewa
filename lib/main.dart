import 'package:flutter/material.dart';
import 'package:ridersewa/features/services/message_page/message_page.dart';
import 'package:ridersewa/features/splash_page/splash_page.dart';

import 'core/presentation/routes/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: Color(0xff070B86),
        )),
        home: MessagePage() //create new widget class for this 'home' to
        // escape 'No MediaQuery widget found' error
        );
  }
}
