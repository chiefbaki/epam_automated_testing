import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color stroke = Color(0xFFDADADA);
  static const Color fcfcfc = Color(0xFFFCFCFC);
  static const Color green = Color(0xFF539B96);
  static const Color scaffoldBgColor = Color(0XFFF5F5F7);
  static const Color itemNameColor = Color(0XFFF6F6F6);
  static const Color selectedItem = Color(0xFF539B96);
  static const Color blue = Color(0XFF3A87FD);
  
  
  static const List<Color> gradientGreen = [
    Color(0XFF7EA3A1),
    Color(0xFF87E4DC)
  ];
  static const List<Color> cardGradientColor = [
    Color(0XFF62ABA7),
    Color(0xFF87E4DC)
  ];
  static Color lightBlack = Colors.black.withOpacity(0.6);
  static Color lightGrey = Colors.black.withOpacity(0.3);
  static Color mediumGrey = Colors.black.withOpacity(0.4);
  static Color greyBorderColor = Colors.black.withOpacity(0.5);
  static Color milkyColor = const Color(0XFFF5F5F5);
}
