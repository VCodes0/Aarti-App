import 'package:flutter/material.dart';
import 'package:god_aarti_app/View/Onboarding/onboarding_second.dart';

class OnboardingFirst extends StatelessWidget {
  const OnboardingFirst({super.key});

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
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingSecond()),
                ),
                child: Image.asset("assets/o1_png.png", fit: BoxFit.cover),
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
