import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../design/tokens/app_spacing.dart';

/// App Time Picker Widget
/// Custom styled time picker for birth time selection
class AppTimePicker extends StatelessWidget {
  final TimeOfDay? selectedTime;
  final ValueChanged<TimeOfDay> onTimeSelected;
  final String? label;
  final TimeOfDay? initialTime;
  final String? errorText;

  const AppTimePicker({
    super.key,
    required this.selectedTime,
    required this.onTimeSelected,
    this.label,
    this.initialTime,
    this.errorText,
  });

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay initial = initialTime ?? selectedTime ?? TimeOfDay.now();

    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initial,
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
      onTimeSelected(picked);
    }
  }

  String _formatTime(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
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
          onTap: () => _selectTime(context),
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
                  Icons.access_time,
                  size: 20,
                  color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Text(
                    selectedTime != null
                        ? _formatTime(selectedTime!)
                        : 'Select time',
                    style: AppTypography.bodyMedium.copyWith(
                      color: selectedTime != null ? textColor : hintColor,
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

