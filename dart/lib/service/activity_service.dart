import 'package:dio/dio.dart';

import '../utils/environment.dart';

class ActivityService {
  final _dio = Dio();
  var _baseUrl = Environment.baseUrl;
}
