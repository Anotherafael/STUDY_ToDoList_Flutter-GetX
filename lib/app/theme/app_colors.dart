import 'package:flutter/material.dart';

class AppColors {
  static Color blue = const Color(0xFF004fa5);
  static Color diamond = const Color(0xFF258485);

  static Color white = const Color(0xFFFFFFFF);
  static Color black = Colors.black;
  static Color white70 = Colors.white70;

  static final LinearGradient background = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      AppColors.diamond,
      AppColors.blue,
    ],
  );
}
