import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_aarti_app/view/splash/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'providers/festival_provider.dart';
import 'providers/recently_played_provider.dart';
import 'providers/trending_aarti_provider.dart';

late Size mq;
void main()  {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RecentlyPlayedProvider()),
        ChangeNotifierProvider(create: (context) => TrendingAartiProvider()),
        ChangeNotifierProvider(create: (context) => FestivalProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
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
