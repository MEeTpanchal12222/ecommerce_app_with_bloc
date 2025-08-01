import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

/* -- Light & Dark Text Themes -- */
class CustomTextTheme {
  CustomTextTheme._(); //To avoid creating instances

  /* -- Light Text Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: CommonColors.dark,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: CommonColors.dark,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
      color: CommonColors.dark,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: CommonColors.dark,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: CommonColors.dark,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: CommonColors.dark,
    ),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, color: CommonColors.dark),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      color: CommonColors.dark.withValues(alpha: 0.8),
    ),
  );

  /* -- Dark Text Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: CommonColors.white,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: CommonColors.white,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
      color: CommonColors.white,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: CommonColors.white,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: CommonColors.white,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: CommonColors.white,
    ),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, color: CommonColors.white),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      color: CommonColors.white.withValues(alpha: 0.8),
    ),
  );
}
