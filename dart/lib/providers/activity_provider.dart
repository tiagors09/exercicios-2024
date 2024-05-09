import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../utils/environment.dart';

class ActivityProvider with ChangeNotifier {
  final _baseUrl = Environment.baseUrl;
  final _dio = Dio();

  Future<dynamic> fetchAllActivities() async {
    try {
      final response = await _dio.get(_baseUrl);
      final decodedResponse = jsonDecode(response.data);

      return Future.value(decodedResponse);
    } catch (e) {
      rethrow;
    }
  }
}
