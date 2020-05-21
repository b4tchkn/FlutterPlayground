import 'dart:convert';
import 'dart:io';

import 'package:consmeticssampleapp/models/custom_exception.dart';
import 'package:consmeticssampleapp/models/news.dart';
import 'package:consmeticssampleapp/models/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class RepositoryImpl implements Repository {
  final String _baseUrl =
      'https://private-63546f-cosmeticssample.apiary-mock.com';

  @override
  Future<List<News>> getNews() async {
    List<News> list;
    try {
      final response = await http.get('$_baseUrl/news');
      final jsonMap = await _handleResponse(response);
      list = jsonMap.map((json) => News.fromJson(json)).toList();
    } on SocketException {
      throw FetchDataException(
          'Error occured while Communication with Server.');
    }
    return list;
  }

  Future<List<Map<String, dynamic>>> _handleResponse(
      http.Response response) async {
    debugPrint('Status Code -> $response.statusCode');
    switch (response.statusCode) {
      case 200:
        debugPrint('json -> ${response.body}');
        final jsonMap = (await jsonDecode(response.body) as List)
            .cast<Map<String, dynamic>>();
        return jsonMap;
      case 201:
        return <Map<String, dynamic>>[];
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
