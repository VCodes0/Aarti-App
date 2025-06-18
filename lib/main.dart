import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'View/Splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

late Size mq;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'God Aarti App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleSpacing: 1,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.red[800],
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          elevation: 0,
          backgroundColor: CupertinoColors.transparent,
        ),
      ),
      home: const SplashPage(),
    );
  }
}
