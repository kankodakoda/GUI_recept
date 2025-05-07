import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Spacing
  static const double paddingTiny = 4.0;
  static double paddingSmall = 8.0;
  static const double paddingMediumSmall = 12.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingHuge = 32.0;
  static const TextStyle mediumHeading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );

  //App color

  static ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 88, 230, 230),
  );

  static TextTheme textTheme = GoogleFonts.nunitoTextTheme();
}
