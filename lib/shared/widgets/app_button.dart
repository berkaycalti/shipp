import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../design/tokens/app_spacing.dart';

/// Custom App Button Widget
enum AppButtonType { primary, secondary, outlined, text }

enum AppButtonSize { small, medium, large }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final AppButtonSize size;
  final bool isLoading;
  final IconData? icon;
  final bool fullWidth;

  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.type = AppButtonType.primary,
    this.size = AppButtonSize.medium,
    this.isLoading = false,
    this.icon,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colors = isDark ? AppDarkColors : AppColors;

    if (fullWidth) {
      return SizedBox(
        width: double.infinity,
        child: _getButtonStyle(context, colors),
      );
    }

    return _getButtonStyle(context, colors);
  }

  Widget _buildContent() {
    if (isLoading) {
      return SizedBox(
        height: size == AppButtonSize.small ? 16 : size == AppButtonSize.medium ? 20 : 24,
        width: size == AppButtonSize.small ? 16 : size == AppButtonSize.medium ? 20 : 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            type == AppButtonType.primary
                ? AppColors.textOnDark
                : AppColors.primary,
          ),
        ),
      );
    }

    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: _getIconSize()),
          const SizedBox(width: AppSpacing.sm),
          Text(label, style: _getTextStyle()),
        ],
      );
    }

    return Text(label, style: _getTextStyle());
  }

  Widget _getButtonStyle(BuildContext context, Type colors) {
    final padding = _getPadding();
    final height = _getHeight();
    final buttonContent = _buildContent();

    switch (type) {
      case AppButtonType.primary:
        final bgColor = colors == AppDarkColors ? AppDarkColors.primary : AppColors.primary;
        final fgColor = colors == AppDarkColors ? AppDarkColors.textPrimary : AppColors.textOnDark;
        return ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            padding: padding,
            minimumSize: Size(0, height),
            shape: RoundedRectangleBorder(
              borderRadius: AppBorderRadius.medium,
            ),
          ),
          child: buttonContent,
        );
      case AppButtonType.secondary:
        final bgColor = colors == AppDarkColors ? AppDarkColors.success : AppColors.success;
        final fgColor = colors == AppDarkColors ? AppDarkColors.textPrimary : AppColors.textOnDark;
        return ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            padding: padding,
            minimumSize: Size(0, height),
            shape: RoundedRectangleBorder(
              borderRadius: AppBorderRadius.medium,
            ),
          ),
          child: buttonContent,
        );
      case AppButtonType.outlined:
        final color = colors == AppDarkColors ? AppDarkColors.primary : AppColors.primary;
        return OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: color,
            side: BorderSide(color: color),
            padding: padding,
            minimumSize: Size(0, height),
            shape: RoundedRectangleBorder(
              borderRadius: AppBorderRadius.medium,
            ),
          ),
          child: buttonContent,
        );
      case AppButtonType.text:
        final color = colors == AppDarkColors ? AppDarkColors.primary : AppColors.primary;
        return TextButton(
          onPressed: isLoading ? null : onPressed,
          style: TextButton.styleFrom(
            foregroundColor: color,
            padding: padding,
            minimumSize: Size(0, height),
          ),
          child: buttonContent,
        );
    }
  }

  TextStyle _getTextStyle() {
    switch (size) {
      case AppButtonSize.small:
        return AppTypography.bodySmall.copyWith(
          fontWeight: AppTypography.semibold,
        );
      case AppButtonSize.medium:
        return AppTypography.button;
      case AppButtonSize.large:
        return AppTypography.button.copyWith(fontSize: 18);
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case AppButtonSize.small:
        return EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        );
      case AppButtonSize.medium:
        return EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: AppSpacing.md,
        );
      case AppButtonSize.large:
        return EdgeInsets.symmetric(
          horizontal: AppSpacing.xxl,
          vertical: AppSpacing.lg,
        );
    }
  }

  double _getHeight() {
    switch (size) {
      case AppButtonSize.small:
        return 36;
      case AppButtonSize.medium:
        return 48;
      case AppButtonSize.large:
        return 56;
    }
  }

  double _getIconSize() {
    switch (size) {
      case AppButtonSize.small:
        return 16;
      case AppButtonSize.medium:
        return 20;
      case AppButtonSize.large:
        return 24;
    }
  }
}

