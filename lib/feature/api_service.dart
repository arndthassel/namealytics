import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:namealytics/feature/data_model.dart';

class ApiService {
  final _httpClient = http.Client();

  Future<NameAnalysis> getAge(String name) async {
    // ignore: unnecessary_null_comparison
    if (name.isEmpty || name == null) {
      throw NoNameEnteredFailure();
    }

    final request = Uri.parse('https://api.agify.io?name=$name');
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw RequestFailure();
    }

    final analysisJson = jsonDecode(response.body) as Map;

    if (analysisJson['age'] == null) {
      throw NameNotFoundFailure();
    }

    return NameAnalysis(
      name: analysisJson['name'],
      age: analysisJson['age'].toString(),
    );
  }
}

class NoNameEnteredFailure implements Exception {}

class RequestFailure implements Exception {}

class NameNotFoundFailure implements Exception {}
