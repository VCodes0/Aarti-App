import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_aarti_app/View/Language/language_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds, then navigate
    Timer(Duration(seconds: 2), () {
      Get.off(LanguagePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/splash.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
