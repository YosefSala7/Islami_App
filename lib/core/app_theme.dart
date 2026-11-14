import 'package:app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: "JannaLT",
        color: AppColors.primary,
        fontWeight: .w700,
      ),
      titleLarge: TextStyle(
        fontFamily: "JannaLT",
        color: AppColors.primary,
        fontWeight: .w700,
        fontSize: 20,
      ),
      titleMedium: TextStyle(
        fontFamily: "JannaLT",
        color: AppColors.primary,
        fontWeight: .w700,
      ),
      displaySmall: TextStyle(
        fontFamily: "JannaLT",
        color: AppColors.white,
        fontWeight: .w700,
      ),
    ),
  );
}
