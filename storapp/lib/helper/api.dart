import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  static Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'ther is a problem with status  code ${response.statusCode}');
    }
  }

  static Future<dynamic> post({required String url, @required dynamic body}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'ther is a problem with status  code ${response.statusCode}');
    }
  }

   static Future<dynamic> put({required String url, @required dynamic body}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'ther is a problem with status  code ${response.statusCode}');
    }
  }
}
