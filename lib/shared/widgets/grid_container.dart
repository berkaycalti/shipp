import 'package:flutter/material.dart';
import '../../design/tokens/app_spacing.dart';

/// Grid Container Widget
/// Helper widget for 4-column grid system layout
class GridContainer extends StatelessWidget {
  final Widget child;
  final int columns;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const GridContainer({
    super.key,
    required this.child,
    this.columns = 4,
    this.padding,
    this.margin,
  }) : assert(columns >= 1 && columns <= 4, 'Columns must be between 1 and 4');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(horizontal: AppSpacing.screenMargin),
      margin: margin,
      child: child,
    );
  }
}

/// Responsive Grid Helper
class GridHelper {
  GridHelper._();

  /// Calculate column span width
  static double getColumnWidth(BuildContext context, int span) {
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = screenWidth - (2 * AppSpacing.screenMargin);
    final columnWidth = AppSpacing.calculateResponsiveColumnWidth(availableWidth);
    final gutters = (span - 1) * AppSpacing.gutter;
    return (span * columnWidth) + gutters;
  }

  /// Get responsive padding
  static EdgeInsets getScreenPadding() {
    return EdgeInsets.symmetric(horizontal: AppSpacing.screenMargin);
  }

  /// Get safe area padding (includes status bar and home navigator)
  static EdgeInsets getSafeAreaPadding() {
    return EdgeInsets.only(
      top: AppSpacing.statusBarHeight,
      bottom: AppSpacing.homeNavigatorHeight,
      left: AppSpacing.screenMargin,
      right: AppSpacing.screenMargin,
    );
  }
}

