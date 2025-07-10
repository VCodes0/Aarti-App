import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/selection_card_widget.dart';
import '../Home/home_screen.dart';
import '../Rate Us/rate_us_screen.dart';
import '../Share/share_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("God Aarti"),
        backgroundColor: const Color(0xFFF9F0E1),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF9F0E1), Color(0xFFFCECDD)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: mq.width * 0.08,
              top: mq.height * 0.02,
              child: const Text(
                'नमस्कार,',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ),

            // Get Started Card
            Positioned(
              top: mq.height * 0.12,
              left: mq.width * 0.08,
              child: SizedBox(
                width: mq.width * 0.35,
                height: mq.height * 0.18,
                child: SelectionCard(
                  onTap: () => Get.to(() => HomeScreen()),
                  cardIcon: Icons.waving_hand,
                  cardTitle: "Get Started",
                ),
              ),
            ),

            // Privacy Card
            Positioned(
              top: mq.height * 0.12,
              right: mq.width * 0.08,
              child: SizedBox(
                width: mq.width * 0.35,
                height: mq.height * 0.18,
                child: SelectionCard(
                  onTap: () => Get.to(() => ShareScreen()),
                  cardIcon: Icons.privacy_tip,
                  cardTitle: "Privacy",
                ),
              ),
            ),

            // Share Card
            Positioned(
              top: mq.height * 0.32,
              left: mq.width * 0.08,
              child: SizedBox(
                width: mq.width * 0.35,
                height: mq.height * 0.18,
                child: SelectionCard(
                  onTap: () => Get.to(() => ShareScreen()),
                  cardIcon: Icons.share,
                  cardTitle: "Share",
                ),
              ),
            ),

            // Rate Us Card
            Positioned(
              top: mq.height * 0.32,
              right: mq.width * 0.08,
              child: SizedBox(
                width: mq.width * 0.35,
                height: mq.height * 0.18,
                child: SelectionCard(
                  onTap: () => Get.to(() => RateUsScreen()),
                  cardIcon: Icons.star,
                  cardTitle: "Rate Us",
                ),
              ),
            ),

            // Bottom Image
            Positioned(
              bottom: mq.height * 0.02,
              left: 0,
              right: 0,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(mq.height * 0.03),
                  child: SizedBox(
                    width: double.infinity,
                    height: mq.height * 0.24,
                    child: Image.network(
                      "https://placehold.co/600x400/F9F0E1/000000?text=Bottom+Image",
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: Text('Bottom Image Placeholder'),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
