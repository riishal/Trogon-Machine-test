import 'package:flutter/material.dart';

class Appstyle {
  static const TextStyle mainText = TextStyle(
    fontSize: 23,
    letterSpacing: 1,
    fontWeight: FontWeight.w700,
    color: Colors.blue,
  );

  static const bodyText = TextStyle(
      letterSpacing: 1,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: Colors.white);
}

class AppColors {
  static const Color primaryColor = Color.fromRGBO(81, 46, 126, 1);
  static const Color secondaryColor = Color.fromRGBO(160, 115, 218, 1);
  static const Color backgroundColor = Colors.white;
  static const Color textColor = Colors.black;
  static const colorsList = [
    Color.fromRGBO(237, 97, 123, 1),
    Color.fromRGBO(255, 175, 1, 1),
    Color.fromRGBO(36, 174, 210, 1),
  ];
}
