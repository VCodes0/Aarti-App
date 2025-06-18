import 'package:flutter/material.dart';
import '../../Widgets/custom_next_button.dart';
import '../Onboarding/onboarding_first.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  final flags = const [
    "assets/united-states.png",
    "assets/flag.png",
    "assets/spain.png",
    "assets/france.png",
    "assets/brazil.png",
    "assets/south-korea.png",
    "assets/russia.png",
  ];

  final flagName = const [
    "English",
    "हिंदी",
    "Española",
    "Français",
    "Português",
    "한국인",
    "Русский",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text("Select Language")),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFF3E0), Color(0xFFFFF8E1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: flags.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedIndex == index
                              ? Colors.orange
                              : Colors.grey.shade300,
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              flags[index],
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              flagName[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Icon(
                            selectedIndex == index
                                ? Icons.radio_button_checked
                                : Icons.radio_button_off,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingFirst()),
                );
              },
              child: CustomNextButton(text: 'Next'),
            ),
            const SizedBox(height: 30),
            Image.asset("assets/lang-ads.png", height: 100),
          ],
        ),
      ),
    );
  }
}
