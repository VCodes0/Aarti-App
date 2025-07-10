import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../model/recently_played_model.dart';

class TrendingAartiProvider extends ChangeNotifier {
  List<RecentlyPlayed> _trendingAarti = [];
  List<RecentlyPlayed> get trendingAarti => _trendingAarti;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final Dio dio = Dio();
  final String url =
      "https://appy.trycatchtech.com/v3/all_god/trending_aarti?category_id=1,2";

  Future<void> getTrendingAartiData() async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await dio.get(url);

      if (response.statusCode == 200 && response.data != null) {
        List<dynamic> decodeData = jsonDecode(response.data);
        _trendingAarti = RecentlyPlayed.getRecentPlayed(decodeData);
        notifyListeners();
      } else {
        log('Failed response: ${response.statusCode}');
      }
    } catch (e) {
      log('Error fetching recently played data: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
