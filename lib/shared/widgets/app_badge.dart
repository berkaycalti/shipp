import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../design/tokens/app_spacing.dart';

/// App Badge Widget
/// Small badge for notifications, counts, status
class AppBadge extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final EdgeInsets? padding;

  const AppBadge({
    super.key,
    required this.label,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.padding,
  });

  AppBadge.count({
    super.key,
    required int count,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.padding,
  }) : label = count > 99 ? '99+' : count.toString();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = backgroundColor ??
        (isDark ? AppDarkColors.primary : AppColors.primary);
    final txtColor = textColor ?? AppColors.textOnDark;

    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: 2,
          ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: AppBorderRadius.small,
      ),
      child: Text(
        label,
        style: AppTypography.caption.copyWith(
          color: txtColor,
          fontSize: fontSize ?? 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/// Zodiac Badge - Special badge for zodiac signs
class ZodiacBadge extends StatelessWidget {
  final String zodiacSign;
  final bool isCompact;

  const ZodiacBadge({
    super.key,
    required this.zodiacSign,
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.border : AppColors.border;
    final txtColor = isDark ? AppDarkColors.textPrimary : AppColors.textPrimary;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isCompact ? AppSpacing.sm : AppSpacing.md,
        vertical: isCompact ? 4 : 6,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: AppBorderRadius.small,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isCompact) ...[
            Text(
              '♈', // Zodiac emoji - can be replaced with icon
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(width: AppSpacing.xs),
          ],
          Text(
            zodiacSign,
            style: AppTypography.caption.copyWith(
              color: txtColor,
              fontWeight: AppTypography.medium,
            ),
          ),
        ],
      ),
    );
  }
}

