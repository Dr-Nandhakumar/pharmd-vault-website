import 'package:flutter/material.dart';

/// ===============================================================
/// AppColors
/// ---------------------------------------------------------------
/// Centralized color definitions used throughout the website.
///
/// Never use Color(0xFF...) directly inside widgets.
/// Always use AppColors.
/// ===============================================================

class AppColors {
  // Prevent instantiation
  AppColors._();

  // ==========================================================
  // Brand Colors (Based on Official Pharm.D Vault Logo)
  // ==========================================================

  /// Premium Gold
  static const Color primary = Color(0xFFD4AF37);

  /// Deep Emerald Green
  static const Color secondary = Color(0xFF2E5E1A);

  /// Forest Green
  static const Color accent = Color(0xFF3F7D20);

  /// Dark Gold
  static const Color darkGold = Color(0xFFA67C00);

  // ==========================================================
  // Background Colors
  // ==========================================================

  /// Main Website Background
  static const Color background = Color(0xFFF8F9FA);

  /// Cards & Containers
  static const Color surface = Colors.white;

  /// Alternate Section Background
  static const Color sectionBackground = Color(0xFFFFFDF5);

  // ==========================================================
  // Text Colors
  // ==========================================================

  /// Main Heading Color
  static const Color textPrimary = Color(0xFF1B1B1B);

  /// Paragraph Text
  static const Color textSecondary = Color(0xFF555555);

  /// Caption / Light Text
  static const Color textLight = Color(0xFF777777);

  // ==========================================================
  // Borders & Divider
  // ==========================================================

  static const Color border = Color(0xFFE4E4E4);

  static const Color divider = Color(0xFFF0F0F0);

  // ==========================================================
  // Status Colors
  // ==========================================================

  static const Color success = Color(0xFF2E7D32);

  static const Color warning = Color(0xFFF9A825);

  static const Color error = Color(0xFFD32F2F);

  static const Color info = Color(0xFF1565C0);

  // ==========================================================
  // Navigation
  // ==========================================================

  static const Color navBarBackground = Colors.white;

  static const Color navBarText = Color(0xFF1B1B1B);

  static const Color navBarHover = primary;

  // ==========================================================
  // Buttons
  // ==========================================================

  static const Color buttonPrimary = primary;

  static const Color buttonSecondary = secondary;

  static const Color buttonText = Colors.white;

  // ==========================================================
  // Cards
  // ==========================================================

  static const Color cardBackground = Colors.white;

  static const Color cardShadow = Color(0x14000000);

  // ==========================================================
  // Footer
  // ==========================================================

  static const Color footerBackground = Color(0xFF173A12);

  static const Color footerText = Colors.white;

  // ==========================================================
  // Miscellaneous
  // ==========================================================

  static const Color transparent = Colors.transparent;

  static const Color white = Colors.white;

  static const Color black = Colors.black;
}
