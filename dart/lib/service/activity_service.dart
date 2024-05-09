import 'dart:convert';

import 'package:dio/dio.dart';

import '../utils/environment.dart';

class ActivityService {
  final _dio = Dio();
  final _baseUrl = Environment.baseUrl;

  Future<Map<String, dynamic>> fetchActivities(String? url) async {
    try {
      final response = await _dio.get(url ?? _baseUrl);

      final Map<String, dynamic> data = jsonDecode(response.data) ?? {};

      return Future.value(data);
    } catch (e) {
      rethrow;
    }
  }
}
