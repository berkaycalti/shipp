import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  static const heading = TextStyle(
    color: AppColors.textLight,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const subheading = TextStyle(
    color: AppColors.textGrey,
    fontSize: 14,
  );

  // Figma-derived styles
  static const statusTime = TextStyle(
    color: AppColors.textLight,
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w600,
    height: 1.31,
    letterSpacing: -0.32,
  );

  static const loginTitle = TextStyle(
    color: AppColors.textLight,
    fontSize: 24,
    fontFamily: 'Clash Grotesk Variable',
    fontWeight: FontWeight.w500,
    letterSpacing: 0.24,
  );

  static const loginSubtitle = TextStyle(
    color: AppColors.textLight,
    fontSize: 14,
    fontFamily: 'Clash Grotesk Variable',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.14,
  );

  static const phonePrefix = TextStyle(
    color: AppColors.textLight,
    fontSize: 14,
    fontFamily: 'Clash Grotesk Variable',
    fontWeight: FontWeight.w400,
  );

  static const phonePlaceholder = TextStyle(
    color: AppColors.textLight,
    fontSize: 14,
    fontFamily: 'Clash Grotesk Variable',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.14,
  );

  static const buttonText = TextStyle(
    color: AppColors.textLight,
    fontSize: 14,
    fontFamily: 'Clash Grotesk Variable',
    fontWeight: FontWeight.w600,
    height: 1.71,
  );

  static const orText = TextStyle(
    color: AppColors.textLight,
    fontSize: 11,
    fontFamily: 'Clash Grotesk Variable',
    fontWeight: FontWeight.w500,
    letterSpacing: 0.11,
  );

  static const termsText = TextStyle(
    color: AppColors.textLight,
    fontSize: 11,
    fontFamily: 'Clash Grotesk Variable',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.11,
  );
}
