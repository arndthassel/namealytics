import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:namealytics/feature/data_model.dart';

class ApiService {
  static const String _baseUrl = 'https://api.agify.io?name=';
  final _httpClient = http.Client();
  Future<NameAnalysis> getAge(String name) async {
    final request = Uri.https(_baseUrl + name);
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw RequestFailure();
    }

    final analysisJson = jsonDecode(response.body) as Map;

    if (analysisJson['age'] == null) {
      throw NameNotFoundFailure();
    }

    return NameAnalysis(name: analysisJson['name'], age: analysisJson['age']);
  }
}

class RequestFailure implements Exception {}

class NameNotFoundFailure implements Exception {}
