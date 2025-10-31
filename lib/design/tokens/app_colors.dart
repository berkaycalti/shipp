import 'package:flutter/material.dart';

/// App Color Palette
/// Design System Colors from Figma
class AppColors {
  AppColors._();

  // ========== Primary/Brand Colors ==========
  /// Primary action color - Bright red (#FF004F)
  static const Color primary = Color(0xFFFF004F);
  
  /// Primary with 80% opacity
  static const Color primary80 = Color(0xCCFF004F);
  
  /// Primary with 60% opacity
  static const Color primary60 = Color(0x99FF004F);
  
  /// Primary with 40% opacity
  static const Color primary40 = Color(0x66FF004F);
  
  /// Primary with 20% opacity
  static const Color primary20 = Color(0x33FF004F);

  // ========== Text Colors ==========
  /// Primary text color - Very dark (#070604 or #1C1C28)
  static const Color textPrimary = Color(0xFF070604);
  
  /// Dark blue-gray for headings (#1C1C28)
  static const Color textDark = Color(0xFF1C1C28);
  
  /// Secondary text color - Medium blue-gray (#555770)
  static const Color textSecondary = Color(0xFF555770);
  
  /// Tertiary text color - Light blue-gray (#8F90A6)
  static const Color textTertiary = Color(0xFF8F90A6);
  
  /// Very light blue-gray for subtle text (#C7C9D9)
  static const Color textLight = Color(0xFFC7C9D9);
  
  /// Text on dark backgrounds
  static const Color textOnDark = Color(0xFFFFFFFF);

  // ========== Background Colors ==========
  /// Main background - White (#FFFFFF)
  static const Color background = Color(0xFFFFFFFF);
  
  /// Surface color - Off-white (#FAFAFC)
  static const Color surface = Color(0xFFFAFAFC);
  
  /// Light gray background (#F2F2F5)
  static const Color backgroundLight = Color(0xFFF2F2F5);
  
  /// Card/container background (#EBEBF0)
  static const Color cardBackground = Color(0xFFEBEBF0);
  
  /// Border/subtle background (#E4E4EB)
  static const Color borderLight = Color(0xFFE4E4EB);

  // ========== Success/Green Colors ==========
  /// Success color - Medium green (#06C270)
  static const Color success = Color(0xFF06C270);
  
  /// Dark green (#05A660)
  static const Color successDark = Color(0xFF05A660);
  
  /// Light green (#39D98A)
  static const Color successLight = Color(0xFF39D98A);
  
  /// Very light green (#57EBA1)
  static const Color successVeryLight = Color(0xFF57EBA1);
  
  /// Success background - Pale mint (#E3FFF1)
  static const Color successBackground = Color(0xFFE3FFF1);

  // ========== Error/Red Colors ==========
  /// Error color - Same as primary red (#FF004F)
  static const Color error = Color(0xFFFF004F);
  
  /// Error with 80% opacity
  static const Color error80 = Color(0xCCFF004F);
  
  /// Error with 60% opacity
  static const Color error60 = Color(0x99FF004F);
  
  /// Error with 40% opacity
  static const Color error40 = Color(0x66FF004F);
  
  /// Error with 20% opacity
  static const Color error20 = Color(0x33FF004F);

  // ========== Warning Colors ==========
  static const Color warning = Color(0xFFFFB020);
  
  // ========== Info Colors ==========
  static const Color info = Color(0xFF0063F7);

  // ========== Border & Divider Colors ==========
  /// Border color - Very light blue-gray (#C7C9D9)
  static const Color border = Color(0xFFC7C9D9);
  
  /// Light border (#E4E4EB)
  static const Color borderLightColor = Color(0xFFE4E4EB);
  
  /// Divider color - Same as border
  static const Color divider = Color(0xFFC7C9D9);

  // ========== Interactive Colors ==========
  /// Disabled state color
  static const Color disabled = Color(0xFFC7C9D9);
  
  /// Hover state color
  static const Color hover = Color(0xFFEBEBF0);
  
  /// Pressed state color
  static const Color pressed = Color(0xFFE4E4EB);
}

/// Dark Theme Colors
class AppDarkColors {
  AppDarkColors._();

  // ========== Primary Colors (same as light for brand consistency) ==========
  static const Color primary = Color(0xFFFF004F);
  static const Color primary80 = Color(0xCCFF004F);
  static const Color primary60 = Color(0x99FF004F);
  static const Color primary40 = Color(0x66FF004F);
  static const Color primary20 = Color(0x33FF004F);

  // ========== Text Colors ==========
  /// Primary text - White
  static const Color textPrimary = Color(0xFFFFFFFF);
  
  /// Secondary text - Light blue-gray (#C7C9D9)
  static const Color textSecondary = Color(0xFFC7C9D9);
  
  /// Tertiary text - Medium blue-gray (#8F90A6)
  static const Color textTertiary = Color(0xFF8F90A6);
  
  /// Dark text on light backgrounds
  static const Color textDark = Color(0xFF1C1C28);

  // ========== Background Colors ==========
  /// Main dark background (#1C1C28)
  static const Color background = Color(0xFF1C1C28);
  
  /// Surface color - Dark blue-gray (#28293D)
  static const Color surface = Color(0xFF28293D);
  
  /// Card background
  static const Color cardBackground = Color(0xFF28293D);
  
  /// Lighter dark background
  static const Color backgroundLight = Color(0xFF28293D);

  // ========== Success Colors (same as light) ==========
  static const Color success = Color(0xFF06C270);
  static const Color successDark = Color(0xFF05A660);
  static const Color successLight = Color(0xFF39D98A);
  static const Color successVeryLight = Color(0xFF57EBA1);
  static const Color successBackground = Color(0xFFE3FFF1);

  // ========== Error Colors (same as light) ==========
  static const Color error = Color(0xFFFF004F);
  static const Color error80 = Color(0xCCFF004F);
  static const Color error60 = Color(0x99FF004F);
  static const Color error40 = Color(0x66FF004F);
  static const Color error20 = Color(0x33FF004F);

  // ========== Warning Colors ==========
  static const Color warning = Color(0xFFFFB020);
  
  // ========== Info Colors ==========
  static const Color info = Color(0xFF0063F7);

  // ========== Border Colors ==========
  /// Dark theme border (#555770)
  static const Color border = Color(0xFF555770);
  static const Color divider = Color(0xFF555770);

  // ========== Interactive Colors ==========
  static const Color disabled = Color(0xFF555770);
  static const Color hover = Color(0xFF28293D);
  static const Color pressed = Color(0xFF1C1C28);
}

