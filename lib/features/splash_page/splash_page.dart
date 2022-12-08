import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ridersewa/core/presentation/routes/router.gr.dart';
import '../../core/presentation/widget/app_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: check for authenticity

    Future.delayed(const Duration(seconds: 10), () {
      context.router.push(const MessageRoute());
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: const Center(
            child: AppLogo(
              aspectRatio: 5.5,
            ),
          ),
        ),
      ),
    );
  }
}
