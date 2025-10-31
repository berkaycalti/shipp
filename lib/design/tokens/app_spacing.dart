/// App Spacing System
/// Based on Shipp Design System: 4-column grid with 16px margins
class AppSpacing {
  AppSpacing._();

  // Base spacing unit (8px grid system)
  static const double baseUnit = 8.0;

  // Spacing scale (8px grid)
  static const double xs = baseUnit * 0.5; // 4px
  static const double sm = baseUnit * 1;    // 8px
  static const double md = baseUnit * 2;    // 16px
  static const double lg = baseUnit * 3;    // 24px
  static const double xl = baseUnit * 4;    // 32px
  static const double xxl = baseUnit * 6;   // 48px
  static const double xxxl = baseUnit * 8;  // 64px

  // ========== Screen Layout (from Design System) ==========
  /// Horizontal margin from screen edges
  static const double screenMargin = md; // 16px
  
  /// Status bar height
  static const double statusBarHeight = 44.0;
  
  /// Home navigator (home indicator) height
  static const double homeNavigatorHeight = 34.0;
  
  /// Screen padding (same as margin)
  static const double screenPadding = screenMargin; // 16px

  // ========== Grid System ==========
  /// Number of columns in the grid
  static const int gridColumns = 4;
  
  /// Column width
  static const double columnWidth = 70.0;
  
  /// Gutter width (space between columns)
  static const double gutter = md; // 16px
  
  /// Calculate total width for N columns
  static double getColumnWidth(int numberOfColumns) {
    if (numberOfColumns < 1 || numberOfColumns > gridColumns) {
      throw ArgumentError('Number of columns must be between 1 and $gridColumns');
    }
    
    // Width = (numberOfColumns * columnWidth) + ((numberOfColumns - 1) * gutter)
    return (numberOfColumns * columnWidth) + ((numberOfColumns - 1) * gutter);
  }
  
  /// Calculate column width for responsive layouts
  /// Takes available width and calculates column width
  static double calculateResponsiveColumnWidth(double availableWidth) {
    // availableWidth = (4 * columnWidth) + (3 * gutter) + (2 * margin)
    // columnWidth = (availableWidth - (3 * gutter) - (2 * margin)) / 4
    final totalGutters = (gridColumns - 1) * gutter;
    final totalMargins = 2 * screenMargin;
    return (availableWidth - totalGutters - totalMargins) / gridColumns;
  }

  // ========== Component Spacing ==========
  /// Card padding
  static const double cardPadding = md; // 16px
  
  /// Button padding
  static const double buttonPadding = sm; // 8px vertical, 16px horizontal
  
  /// Section spacing
  static const double sectionSpacing = lg; // 24px
  
  /// List item spacing
  static const double listItemSpacing = md; // 16px
}

