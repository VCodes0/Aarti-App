import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:god_aarti_app/View/Term%20of%20Use/tou_page.dart';

class ThirdOnboardingPage extends StatelessWidget {
  const ThirdOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: mq.width,
        height: mq.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFF3E0), Color(0xFFFFF8E1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: mq.height * 0.05,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/o3png.png", fit: BoxFit.cover),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/o2shade.png", fit: BoxFit.cover),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: mq.height * 0.015,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TermsOfUsePage()),
                  ),
                  child: Image.asset("assets/o3next.png", fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: mq.height * 0.17,
              child: Text(
                textAlign: TextAlign.center,
                "Save and download your favourite \n Aartis and Wallpapers.",
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: mq.height * 0.24,
              child: Center(
                child: Text(
                  "Save your Collection",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset("assets/o_flower.png", fit: BoxFit.cover),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Image.asset("assets/o_bottom.png"),
    );
  }
}
