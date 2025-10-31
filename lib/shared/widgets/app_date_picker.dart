import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../design/tokens/app_spacing.dart';
import '../../core/utils/date_formatter.dart';

/// App Date Picker Widget
/// Custom styled date picker for birth date selection
class AppDatePicker extends StatelessWidget {
  final DateTime? selectedDate;
  final ValueChanged<DateTime> onDateSelected;
  final String? label;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? initialDate;
  final String? errorText;

  const AppDatePicker({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
    this.label,
    this.firstDate,
    this.lastDate,
    this.initialDate,
    this.errorText,
  });

  Future<void> _selectDate(BuildContext context) async {
    final DateTime now = DateTime.now();
    final DateTime first = firstDate ?? DateTime(1900);
    final DateTime last = lastDate ?? now;
    final DateTime initial = initialDate ?? selectedDate ?? now.subtract(const Duration(days: 365 * 25));

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: first,
      lastDate: last,
      builder: (context, child) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: AppColors.textOnDark,
              onSurface: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final borderColor = errorText != null
        ? AppColors.error
        : (isDark ? AppDarkColors.border : AppColors.border);
    final textColor = isDark ? AppDarkColors.textPrimary : AppColors.textPrimary;
    final hintColor = isDark ? AppDarkColors.textTertiary : AppColors.textTertiary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: Text(
              label!,
              style: AppTypography.label.copyWith(
                color: textColor,
              ),
            ),
          ),
        InkWell(
          onTap: () => _selectDate(context),
          borderRadius: AppBorderRadius.medium,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.md,
            ),
            decoration: BoxDecoration(
              color: isDark ? AppDarkColors.surface : AppColors.surface,
              border: Border.all(color: borderColor, width: 1),
              borderRadius: AppBorderRadius.medium,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 20,
                  color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Text(
                    selectedDate != null
                        ? DateFormatter.formatDate(selectedDate!)
                        : 'Select date',
                    style: AppTypography.bodyMedium.copyWith(
                      color: selectedDate != null ? textColor : hintColor,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                ),
              ],
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: AppSpacing.xs, left: AppSpacing.sm),
            child: Text(
              errorText!,
              style: AppTypography.caption.copyWith(
                color: AppColors.error,
              ),
            ),
          ),
      ],
    );
  }
}

