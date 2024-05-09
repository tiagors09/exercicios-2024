import 'dart:convert';

import 'package:chuva_dart/models/activity.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../utils/environment.dart';

class ActivityProvider with ChangeNotifier {
  final _baseUrl = Environment.baseUrl;
  final _dio = Dio();
  late int _totalActivitiesCount;
  late Map<String, String> _links;
  late List<Activity> _activities;

  List<Activity> get activities => [..._activities];
  int get activitiesCount => _activities.length;
  int get totalActivitiesCount => _totalActivitiesCount;
  String? get nextLink => _links['next'].toString();

  Future<void> fetchAllActivities() async {
    try {
      final response = await _dio.get(_baseUrl);
      final decodedResponse = jsonDecode(response.data);

      _totalActivitiesCount = decodedResponse['count'];
      _links = decodedResponse['links'];
      for (var element in (decodedResponse['data'] as List<dynamic>)) {
        _activities.add(Activity.fromJson(element));
      }
    } catch (e) {
      rethrow;
    }
  }
}
