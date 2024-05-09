import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/activity.dart';
import '../utils/environment.dart';

class ActivityService {
  final _dio = Dio();
  var _baseUrl = Environment.baseUrl;

  Future<List<Activity>> fetchActivities() async {
    try {
      final response = await _dio.get(_baseUrl);

      final Map<String, dynamic> data = jsonDecode(response.data) ?? {};

      print(data);

      return Future.value(<Activity>[]);
    } catch (e) {
      rethrow;
    }
  }
}
