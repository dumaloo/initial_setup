import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static Future<Map<String, dynamic>> get(String url) async {
    try {
      final res = await http.get(Uri.parse(url));

      var body = res.body;

      if (res.statusCode == 200) {
        return jsonDecode(body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data : $e');
    }
  }

  static Future<Map<String, dynamic>> post(String url, {dynamic data}) async {
    try {
      final res = await http.post(Uri.parse(url), body: data);

      var body = res.body;

      if (res.statusCode == 200) {
        return jsonDecode(body);
      } else {
        throw Exception('Failed to post data');
      }
    } catch (e) {
      throw Exception('Failed to post data : $e');
    }
  }

  static Future<Map<String, dynamic>> put(String url, {dynamic data}) async {
    try {
      final res = await http.put(Uri.parse(url), body: data);

      var body = res.body;

      if (res.statusCode == 200) {
        return jsonDecode(body);
      } else {
        throw Exception('Failed to put data');
      }
    } catch (e) {
      throw Exception('Failed to put data : $e');
    }
  }

  static Future<Map<String, dynamic>> patch(String url, {dynamic data}) async {
    try {
      final res = await http.patch(Uri.parse(url), body: data);

      var body = res.body;

      if (res.statusCode == 200) {
        return jsonDecode(body);
      } else {
        throw Exception('Failed to patch data');
      }
    } catch (e) {
      throw Exception('Failed to patch data : $e');
    }
  }

  static Future<bool> delete(String url) async {
    try {
      final res = await http.delete(Uri.parse(url));

      return res.statusCode == 204;
    } catch (e) {
      throw Exception('Failed to delete data : $e');
    }
  }
}
