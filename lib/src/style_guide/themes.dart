import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_vault/src/style_guide/style_guide.dart';

ThemeData get lighTheme {
  final colorScheme = ColorScheme.fromSeed(seedColor: MyColors.primary);
  return ThemeData(
    colorScheme: colorScheme,
    useMaterial3: true,
    scaffoldBackgroundColor: colorScheme.surface,
    fontFamily: GoogleFonts.mulish().fontFamily,
    textTheme: TextTheme().copyWith(
      titleLarge: TextStyle(fontSize: 24, color: MyColors.black),
      titleMedium: TextStyle(fontSize: 20, color: MyColors.black),
      titleSmall: TextStyle(fontSize: 18, color: MyColors.black),
      bodyLarge: TextStyle(color: MyColors.black),
      bodyMedium: TextStyle(color: MyColors.black),
      bodySmall: TextStyle(color: MyColors.black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primary,
        foregroundColor: MyColors.white,
        padding: const EdgeInsets.symmetric(vertical: 20),
        textStyle: TextStyle(fontSize: 16),
      ),
    ),
    appBarTheme: AppBarTheme().copyWith(
      backgroundColor: colorScheme.surface,
      titleTextStyle: TextStyle(
          fontSize: 20, color: MyColors.black, fontWeight: FontWeight.bold),
      elevation: 0,
      foregroundColor: MyColors.black,
      systemOverlayStyle: kStatusBarLightModeOn,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        textStyle: TextStyle(fontSize: 16),
      ),
    ),
  );
}

ThemeData get darkTheme {
  final colorScheme = ColorScheme.fromSeed(seedColor: MyColors.black);
  return ThemeData(
    colorScheme: colorScheme,
    useMaterial3: true,
    scaffoldBackgroundColor: colorScheme.surface,
    fontFamily: GoogleFonts.mulish().fontFamily,
    textTheme: TextTheme().copyWith(
      titleLarge: TextStyle(fontSize: 24, color: MyColors.white),
      titleMedium: TextStyle(fontSize: 20, color: MyColors.white),
      titleSmall: TextStyle(fontSize: 18, color: MyColors.white),
      bodyLarge: TextStyle(color: MyColors.white),
      bodyMedium: TextStyle(color: MyColors.white),
      bodySmall: TextStyle(color: MyColors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primary,
        foregroundColor: MyColors.white,
        padding: const EdgeInsets.symmetric(vertical: 20),
        textStyle: TextStyle(fontSize: 16),
      ),
    ),
    appBarTheme: AppBarTheme().copyWith(
      backgroundColor: colorScheme.surface,
      titleTextStyle: TextStyle(
          fontSize: 20, color: MyColors.white, fontWeight: FontWeight.bold),
      elevation: 0,
      foregroundColor: MyColors.white,
      systemOverlayStyle: kStatusBarDarkModeOn,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        textStyle: TextStyle(fontSize: 16),
      ),
    ),
  );
}
