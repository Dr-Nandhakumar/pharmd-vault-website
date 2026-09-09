import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  /// ===========================================================
  /// Light Theme
  /// ===========================================================
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      brightness: Brightness.light,

      scaffoldBackgroundColor: AppColors.background,

      primaryColor: AppColors.primary,

      textTheme: AppTextTheme.textTheme,

      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: Colors.white,
        secondary: AppColors.secondary,
        onSecondary: Colors.white,
        error: AppColors.error,
        onError: Colors.white,
        surface: AppColors.surface,
        onSurface: AppColors.textPrimary,
      ),

      // =======================================================
      // App Bar
      // =======================================================
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.navBarBackground,
        foregroundColor: AppColors.navBarText,
        elevation: 0,
        centerTitle: false,
        scrolledUnderElevation: 0,
      ),

      // =======================================================
      // Cards
      // =======================================================
      cardTheme: CardThemeData(
        color: AppColors.cardBackground,
        elevation: 3,
        shadowColor: AppColors.cardShadow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // =======================================================
      // Buttons
      // =======================================================
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonPrimary,
          foregroundColor: AppColors.buttonText,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // =======================================================
      // Outlined Buttons
      // =======================================================
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.secondary,
          side: const BorderSide(color: AppColors.secondary, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // =======================================================
      // Input Fields
      // =======================================================
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.border),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.border),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
      ),

      // =======================================================
      // Divider
      // =======================================================
      dividerColor: AppColors.divider,
    );
  }
}
