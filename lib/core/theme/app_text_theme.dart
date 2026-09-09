import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme get textTheme {
    return TextTheme(
      // ===========================================================
      // Display
      // ===========================================================
      displayLarge: GoogleFonts.poppins(
        fontSize: 52,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.2,
      ),

      displayMedium: GoogleFonts.poppins(
        fontSize: 42,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),

      displaySmall: GoogleFonts.poppins(
        fontSize: 34,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),

      // ===========================================================
      // Headings
      // ===========================================================
      headlineLarge: GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),

      headlineMedium: GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),

      headlineSmall: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),

      // ===========================================================
      // Titles
      // ===========================================================
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),

      titleMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),

      titleSmall: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),

      // ===========================================================
      // Body
      // ===========================================================
      bodyLarge: GoogleFonts.poppins(
        fontSize: 18,
        color: AppColors.textSecondary,
        height: 1.7,
      ),

      bodyMedium: GoogleFonts.poppins(
        fontSize: 16,
        color: AppColors.textSecondary,
        height: 1.6,
      ),

      bodySmall: GoogleFonts.poppins(fontSize: 14, color: AppColors.textLight),

      // ===========================================================
      // Labels
      // ===========================================================
      labelLarge: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),

      labelMedium: GoogleFonts.poppins(fontSize: 13),

      labelSmall: GoogleFonts.poppins(fontSize: 11),
    );
  }
}
