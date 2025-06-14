import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../utils/enums/environment.dart';

class AppConfig {
  final String baseUrl;
  final Environment environment;

  static late AppConfig _instance;

  static AppConfig get instance => _instance;

  AppConfig._internal({required this.baseUrl, required this.environment});

  static void initialize(Environment env) {
    final baseUrl = dotenv.env['BASE_URL'];
    if (baseUrl == null || baseUrl.isEmpty) {
      throw Exception('BASE_URL not found in .env file for $env environment.');
    }

    _instance = AppConfig._internal(environment: env, baseUrl: baseUrl);
  }
}
