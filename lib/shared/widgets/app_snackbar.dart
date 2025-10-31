import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_spacing.dart';

/// Custom Snackbar Widget
enum SnackbarType { success, error, warning, info }

class AppSnackbar {
  AppSnackbar._();

  /// Show snackbar
  static void show(
    BuildContext context, {
    required String message,
    String? title,
    SnackbarType type = SnackbarType.info,
    Duration duration = const Duration(seconds: 3),
    VoidCallback? onAction,
    String? actionLabel,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    Color backgroundColor;
    Color textColor;
    IconData icon;

    switch (type) {
      case SnackbarType.success:
        backgroundColor = isDark ? AppDarkColors.success : AppColors.success;
        textColor = isDark ? AppDarkColors.textPrimary : AppColors.textOnDark;
        icon = Icons.check_circle;
        break;
      case SnackbarType.error:
        backgroundColor = isDark ? AppDarkColors.error : AppColors.error;
        textColor = isDark ? AppDarkColors.textPrimary : AppColors.textOnDark;
        icon = Icons.error;
        break;
      case SnackbarType.warning:
        backgroundColor = isDark ? AppDarkColors.warning : AppColors.warning;
        textColor = isDark ? AppDarkColors.textPrimary : AppColors.textOnDark;
        icon = Icons.warning;
        break;
      case SnackbarType.info:
        backgroundColor = isDark ? AppDarkColors.info : AppColors.info;
        textColor = isDark ? AppDarkColors.textPrimary : AppColors.textOnDark;
        icon = Icons.info;
        break;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon, color: textColor, size: 24),
            SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null) ...[
                    Text(
                      title,
                      style: AppTypography.bodyMedium.copyWith(
                        color: textColor,
                        fontWeight: AppTypography.semibold,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xs),
                  ],
                  Text(
                    message,
                    style: AppTypography.bodyMedium.copyWith(
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            if (onAction != null && actionLabel != null)
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  onAction();
                },
                child: Text(
                  actionLabel,
                  style: AppTypography.bodyMedium.copyWith(
                    color: textColor,
                    fontWeight: AppTypography.semibold,
                  ),
                ),
              ),
          ],
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  /// Show success snackbar
  static void success(
    BuildContext context,
    String message, {
    String? title,
  }) {
    show(
      context,
      message: message,
      title: title,
      type: SnackbarType.success,
    );
  }

  /// Show error snackbar
  static void error(
    BuildContext context,
    String message, {
    String? title,
  }) {
    show(
      context,
      message: message,
      title: title,
      type: SnackbarType.error,
      duration: const Duration(seconds: 4),
    );
  }

  /// Show warning snackbar
  static void warning(
    BuildContext context,
    String message, {
    String? title,
  }) {
    show(
      context,
      message: message,
      title: title,
      type: SnackbarType.warning,
    );
  }

  /// Show info snackbar
  static void info(
    BuildContext context,
    String message, {
    String? title,
  }) {
    show(
      context,
      message: message,
      title: title,
      type: SnackbarType.info,
    );
  }
}

