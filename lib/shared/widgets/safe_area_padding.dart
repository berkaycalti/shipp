import 'package:flutter/material.dart';
import '../../design/tokens/app_spacing.dart';

/// Safe Area Padding Widget
/// Applies safe area padding including status bar and home navigator heights
class SafeAreaPadding extends StatelessWidget {
  final Widget child;
  final bool includeTop;
  final bool includeBottom;
  final bool includeHorizontal;

  const SafeAreaPadding({
    super.key,
    required this.child,
    this.includeTop = true,
    this.includeBottom = true,
    this.includeHorizontal = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: includeTop ? AppSpacing.statusBarHeight : 0,
        bottom: includeBottom ? AppSpacing.homeNavigatorHeight : 0,
        left: includeHorizontal ? AppSpacing.screenMargin : 0,
        right: includeHorizontal ? AppSpacing.screenMargin : 0,
      ),
      child: child,
    );
  }
}

/// App Safe Area Widget
/// Wrapper for safe area with custom padding
class AppSafeArea extends StatelessWidget {
  final Widget child;
  final bool top;
  final bool bottom;
  final bool left;
  final bool right;

  const AppSafeArea({
    super.key,
    required this.child,
    this.top = true,
    this.bottom = true,
    this.left = true,
    this.right = true,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Padding(
        padding: EdgeInsets.only(
          left: left ? AppSpacing.screenMargin : 0,
          right: right ? AppSpacing.screenMargin : 0,
        ),
        child: child,
      ),
    );
  }
}

