import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ridersewa/features/services/home_page/home_page.dart';
import '../../core/presentation/widget/app_logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    //TODO: check for authenticity

    // Future.delayed(const Duration(seconds: 10), () {
    //   context.router.push(const HomeRoute());
    // });

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
