import 'package:flutter/material.dart';

/// App Border Radius System
class AppBorderRadius {
  AppBorderRadius._();

  // Small radius
  static const double sm = 4.0;
  static const BorderRadius small = BorderRadius.all(Radius.circular(sm));

  // Medium radius
  static const double md = 8.0;
  static const BorderRadius medium = BorderRadius.all(Radius.circular(md));

  // Large radius
  static const double lg = 12.0;
  static const BorderRadius large = BorderRadius.all(Radius.circular(lg));

  // Extra large radius
  static const double xl = 16.0;
  static const BorderRadius extraLarge = BorderRadius.all(Radius.circular(xl));

  // Full rounded (for pills/buttons)
  static const double full = 999.0;
  static const BorderRadius rounded = BorderRadius.all(Radius.circular(full));
}

