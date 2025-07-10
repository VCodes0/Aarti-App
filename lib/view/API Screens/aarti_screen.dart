import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/aarti_screen_components.dart';
import '../../providers/festival_provider.dart';
import '../../providers/recently_played_provider.dart';
import '../../providers/trending_aarti_provider.dart';

class AartiScreen extends StatefulWidget {
  const AartiScreen({super.key});

  @override
  State<AartiScreen> createState() => _AartiState();
}

class _AartiState extends State<AartiScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<RecentlyPlayedProvider>(
      context,
      listen: false,
    ).getRecentlyPlayedData();
    Provider.of<TrendingAartiProvider>(
      context,
      listen: false,
    ).getTrendingAartiData();
    Provider.of<FestivalProvider>(
      context,
      listen: false,
    ).getFestivalAartiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aarti")),
      body: SafeArea(child: AartiScreenComponents()),
    );
  }
}
