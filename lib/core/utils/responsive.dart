import 'package:flutter/material.dart';

/// ===============================================================
/// Responsive Helper
/// ---------------------------------------------------------------
/// Centralized helper class for responsive layouts.
///
/// Desktop : >= 1024 px
/// Tablet  : 600 - 1023 px
/// Mobile  : < 600 px
/// ===============================================================

class Responsive {
  Responsive._();

  /// Breakpoints
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 1024;

  /// Current Screen Width
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Current Screen Height
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Is Mobile
  static bool isMobile(BuildContext context) {
    return width(context) < mobileBreakpoint;
  }

  /// Is Tablet
  static bool isTablet(BuildContext context) {
    return width(context) >= mobileBreakpoint &&
        width(context) < tabletBreakpoint;
  }

  /// Is Desktop
  static bool isDesktop(BuildContext context) {
    return width(context) >= tabletBreakpoint;
  }

  /// Responsive Value
  ///
  /// Example:
  ///
  /// ```dart
  /// Responsive.value(
  ///   context,
  ///   mobile: 16,
  ///   tablet: 24,
  ///   desktop: 32,
  /// )
  /// ```
  static T value<T>(
    BuildContext context, {
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    if (isDesktop(context)) {
      return desktop;
    }

    if (isTablet(context)) {
      return tablet;
    }

    return mobile;
  }
}
