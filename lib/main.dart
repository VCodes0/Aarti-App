import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_aarti_app/providers/recently_played_provider.dart';
import 'package:god_aarti_app/providers/trending_aarti_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'view/splash/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RecentlyPlayedProvider()),
        ChangeNotifierProvider(create: (_) => TrendingAartiProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: CupertinoColors.white,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: CupertinoColors.transparent,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      title: 'Aarti App',
      home: const SplashScreen(),
    );
  }
}
