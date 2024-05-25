import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trogon_test/models/cours_model.dart';

class ProviderData extends ChangeNotifier {
  CoursModel? coursModel;

  Future<void> fetchCourses() async {
    String token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJ1c2VyX2lkIjoiMiIsInJvbGVfaWQiOiIyIiwicm9sZV9sYWJlbCI6IlVzZXIiLCJwaG9uZSI6Ijk5NDY4MDExMDAifQ.BcHZkDQ_VPPQ-jnOtS4Tnwx_4GqQ9761q7BUOjPpML8';
    String uri =
        'https://trogon.info/tutorpro/edspark/api/my_course?auth_token=$token';

    try {
      final response = await http.get(Uri.parse(uri));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        coursModel = CoursModel.fromJson(data);
      } else {
        throw Exception('Failed to load courses');
      }
    } catch (e) {
      throw Exception('Failed to load courses: $e');
    } finally {
      notifyListeners();
    }
  }
}
