import 'package:flutter/material.dart';

class AppColors {
  static const white = Colors.white;
  static const black = Color(0xff000000);
  static const grey = Colors.grey;
  static const grey1 = Color(0xFFF7F8F9);
  static const grey2 = Color(0xFFA7A9B7);
  static const black1 = Color(0xFF1E232C);
  static const mainColor = Color(0xffE7281E);
  static const red = Colors.red;
  static const green = Colors.green;
  static const greenAccent = Color(0xFF58FF8F);
  static const pink = Color(0xFF9747FF);
  static const orange = Colors.orange;
  static const blue = Colors.blue;
  static const btnColor = Color(0xffF7F8F9);
  static const inputColor = Color(0xffE8ECF4);

  MaterialColor primary =
      const MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFFFEBEE), // Lightest shade of red
    100: Color(0xFFFFCDD2), // Lighter shade of red
    200: Color(0xFFEF9A9A), // Light shade of red
    300: Color(0xFFE57373), // Red
    400: Color(0xFFEF5350), // Slightly darker shade of red
    500: Color(_primaryPrimaryValue), // Red (Primary)
    600: Color(0xFFE53935), // Darker shade of red
    700: Color(0xFFD32F2F), // Even darker shade of red
    800: Color(0xFFC62828), // Very dark shade of red
    900: Color(0xFFB71C1C), // Darkest shade of red
  });
  static const int _primaryPrimaryValue = 0xFFE7281E;

  static const MaterialColor primaryAccent =
      MaterialColor(_primaryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_primaryAccentValue),
    400: Color(0xFFFFF0C3),
    700: Color(0xFFFFEAAA),
  });
  static const int _primaryAccentValue = 0xFFFFFDF6;
}
