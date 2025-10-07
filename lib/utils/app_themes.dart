import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/utils/constants.dart';

class AppThemes {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      platform: TargetPlatform.android,
      scaffoldBackgroundColor: kDarkBackgroundColor,
      primaryColor: kPrimaryColor,
      canvasColor: kDarkBackgroundColor,
      textTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
      colorScheme: const ColorScheme.dark(
        primary: kPrimaryColor,
        surface: kDarkBackgroundColor,
        background: kDarkBackgroundColor,
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      platform: TargetPlatform.android,
      scaffoldBackgroundColor: kLightBackgroundColor,
      primaryColor: kPrimaryColor,
      canvasColor: kLightBackgroundColor,
      textTheme: GoogleFonts.latoTextTheme(ThemeData.light().textTheme),
      colorScheme: const ColorScheme.light(
        primary: kPrimaryColor,
        surface: kLightBackgroundColor,
        background: kLightBackgroundColor,
      ),
    );
  }
}