import 'package:flutter/material.dart';
import '../../design/tokens/app_spacing.dart';

/// Screen Utilities
/// Helper functions for screen calculations and responsive design
class ScreenUtils {
  ScreenUtils._();

  /// Get screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Get screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Get available width (screen width minus margins)
  static double availableWidth(BuildContext context) {
    return screenWidth(context) - (2 * AppSpacing.screenMargin);
  }

  /// Get available height (screen height minus status bar and home navigator)
  static double availableHeight(BuildContext context) {
    return screenHeight(context) - 
           AppSpacing.statusBarHeight - 
           AppSpacing.homeNavigatorHeight;
  }

  /// Calculate column width for given span
  static double columnWidthForSpan(BuildContext context, int span) {
    if (span < 1 || span > AppSpacing.gridColumns) {
      throw ArgumentError(
        'Span must be between 1 and ${AppSpacing.gridColumns}',
      );
    }

    final available = availableWidth(context);
    final columnWidth = AppSpacing.calculateResponsiveColumnWidth(available);
    final gutters = (span - 1) * AppSpacing.gutter;
    
    return (span * columnWidth) + gutters;
  }

  /// Check if device is tablet
  static bool isTablet(BuildContext context) {
    return screenWidth(context) >= 768;
  }

  /// Check if device is phone
  static bool isPhone(BuildContext context) {
    return screenWidth(context) < 768;
  }

  /// Get responsive padding
  static EdgeInsets responsivePadding(BuildContext context) {
    if (isTablet(context)) {
      return EdgeInsets.symmetric(
        horizontal: AppSpacing.screenMargin * 2,
      );
    }
    return EdgeInsets.symmetric(horizontal: AppSpacing.screenMargin);
  }

  /// Get grid spacing for list items
  static double gridSpacing(BuildContext context, int columns) {
    if (columns <= 1) return 0;
    return AppSpacing.gutter;
  }
}

