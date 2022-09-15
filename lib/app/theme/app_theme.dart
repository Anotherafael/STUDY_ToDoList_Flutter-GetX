import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typographies.dart';

class AppTheme {
  static ThemeData get defaultTheme => ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: AppTypographies.appTitleTextStyle,
        ),
      );

  static BoxDecoration get backgroundDecoration => BoxDecoration(
        gradient: AppColors.background,
      );
}
