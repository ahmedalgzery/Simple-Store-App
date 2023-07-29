import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  // Static method to make a GET request to the provided URL and return the response data
  static Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // If the request is successful (status code 200), decode the JSON response body and return it
      return jsonDecode(response.body);
    } else {
      // If the request is not successful, throw an exception with a descriptive error message
      throw Exception('There is a problem with status code ${response.statusCode}');
    }
  }

  // Static method to make a POST request to the provided URL with the given body data and return the response data
  static Future<dynamic> post({required String url, @required dynamic body}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      // If the request is successful (status code 200), decode the JSON response body and return it
      return jsonDecode(response.body);
    } else {
      // If the request is not successful, throw an exception with a descriptive error message
      throw Exception('There is a problem with status code ${response.statusCode}');
    }
  }

  // Static method to make a PUT request to the provided URL with the given body data and return the response data
  static Future<dynamic> put({required String url, @required dynamic body}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      // If the request is successful (status code 200), decode the JSON response body and return it
      return jsonDecode(response.body);
    } else {
      // If the request is not successful, throw an exception with a descriptive error message
      throw Exception('There is a problem with status code ${response.statusCode}');
    }
  }
}
