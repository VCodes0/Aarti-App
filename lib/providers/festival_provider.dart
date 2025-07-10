import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:god_aarti_app/model/festival_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FestivalProvider extends ChangeNotifier {
  final dio = Dio();
  String url = "https://appy.trycatchtech.com/v3/all_god/all_god_festival_list";

  List<Data> _getFestivalData = [];
  List<Data> get getFestivalData => _getFestivalData;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getFestivalAartiData() async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await dio.get(url);

      if (response.statusCode == 200 && response.data != null) {
        // 👇 Fix here: decode the Map, then access the 'data' list
        final Map<String, dynamic> decoded = response.data is String
            ? jsonDecode(response.data)
            : response.data;

        if (decoded['data'] != null && decoded['data'] is List) {
          _getFestivalData = Data.getData(decoded['data']);
          // Optionally save to SharedPreferences
          final prefs = await SharedPreferences.getInstance();
          prefs.setString('festivalData', jsonEncode(decoded['data']));
        } else {
          log('Unexpected data format: ${decoded['data']}');
        }
      } else {
        log('Failed response: ${response.statusCode}');
      }
    } catch (e) {
      log('Error fetching festival data: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
