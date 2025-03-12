import 'package:flutter/material.dart';
import 'package:my_profile/constants/page_colors.dart';

class PageTheme {
  static final ThemeData themeData = ThemeData(
    primaryColor: PageColors.black,
    colorScheme: ColorScheme.fromSeed(seedColor: PageColors.black),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(color: PageColors.white, surfaceTintColor: PageColors.white),
    textTheme: const TextTheme(
      // Display
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w900,
        height: 64 / 57,
        fontFamily: 'Nunito',
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w800,
        height: 52 / 45,
        fontFamily: 'Nunito',
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        height: 44 / 36,
        fontFamily: 'Nunito',
      ),

      // Headline
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        height: 40 / 32,
        fontFamily: 'Nunito',
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        height: 36 / 28,
        fontFamily: 'Nunito',
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 32 / 24,
        fontFamily: 'Nunito',
      ),

      // Title
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 28 / 22,
        fontFamily: 'Nunito',
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 24 / 16,
        fontFamily: 'Nunito',
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
        fontFamily: 'Nunito',
      ),

      // Body
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        fontFamily: 'Nunito',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        fontFamily: 'Nunito',
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 16 / 12,
        fontFamily: 'Nunito',
      ),

      // Label
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
        fontFamily: 'Nunito',
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
        fontFamily: 'Nunito',
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 16 / 11,
        fontFamily: 'Nunito',
      ),
    ),
  );
}