import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../design/tokens/app_spacing.dart';

/// App Chip Widget
/// Selectable/interactive chip for filters, tags, interests
class AppChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? selectedBackgroundColor;
  final Color? textColor;

  const AppChip({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onTap,
    this.icon,
    this.backgroundColor,
    this.selectedBackgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    final bgColor = isSelected
        ? (selectedBackgroundColor ??
            (isDark ? AppDarkColors.primary : AppColors.primary))
        : (backgroundColor ??
            (isDark ? AppDarkColors.border : AppColors.border));
    
    final txtColor = isSelected
        ? (textColor ?? AppColors.textOnDark)
        : (textColor ?? (isDark ? AppDarkColors.textPrimary : AppColors.textPrimary));

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: AppBorderRadius.medium,
          border: isSelected
              ? null
              : Border.all(
                  color: isDark ? AppDarkColors.border : AppColors.border,
                ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 16, color: txtColor),
              const SizedBox(width: AppSpacing.xs),
            ],
            Text(
              label,
              style: AppTypography.bodySmall.copyWith(
                color: txtColor,
                fontWeight: isSelected ? AppTypography.medium : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Filter Chip - For filter selections
class FilterChip extends AppChip {
  const FilterChip({
    super.key,
    required super.label,
    super.isSelected = false,
    super.onTap,
    super.icon,
  });
}

/// Interest Chip - For interests/hobbies
class InterestChip extends AppChip {
  const InterestChip({
    super.key,
    required super.label,
    super.isSelected = false,
    super.onTap,
  });
}

