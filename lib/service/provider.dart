import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trogon_test/models/cours_model.dart';

class ProviderData extends ChangeNotifier {
  late CoursModel coursModel;

  Future<CoursModel> fetchCourses() async {
    String token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJ1c2VyX2lkIjoiMiIsInJvbGVfaWQiOiIyIiwicm9sZV9sYWJlbCI6IlVzZXIiLCJwaG9uZSI6Ijk5NDY4MDExMDAifQ.BcHZkDQ_VPPQ-jnOtS4Tnwx_4GqQ9761q7BUOjPpML8';

    String uri =
        'https://trogon.info/tutorpro/edspark/api/my_course?auth_token=$token';

    try {
      final response = await http.get(Uri.parse(uri));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        coursModel = CoursModel.fromJson(data);

        return coursModel;
      } else {
        throw Exception(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
