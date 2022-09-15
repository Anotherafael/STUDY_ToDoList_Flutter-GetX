import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTypographies {
  static TextStyle get appTitleTextStyle => TextStyle(
        fontFamily: "Quicksand",
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      );

  static TextStyle get formButtonTextStyle => TextStyle(
        fontFamily: "OpenSans",
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.blue,
      );

  static TextStyle get formInputTextStyle => TextStyle(
        fontFamily: "OpenSans",
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      );

  static TextStyle get listItemTitleTextStyle => TextStyle(
        fontFamily: "Quicksand",
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      );
}
