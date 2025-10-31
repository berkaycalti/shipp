import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';

/// Range Slider Widget
/// For age range, distance range, etc.
class AppRangeSlider extends StatelessWidget {
  final double minValue;
  final double maxValue;
  final double startValue;
  final double endValue;
  final ValueChanged<RangeValues> onChanged;
  final String? label;
  final String? unit;
  final int? divisions;

  const AppRangeSlider({
    super.key,
    required this.minValue,
    required this.maxValue,
    required this.startValue,
    required this.endValue,
    required this.onChanged,
    this.label,
    this.unit,
    this.divisions,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final activeColor = isDark ? AppDarkColors.primary : AppColors.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              label!,
              style: AppTypography.bodyMedium,
            ),
          ),
        RangeSlider(
          values: RangeValues(startValue, endValue),
          min: minValue,
          max: maxValue,
          divisions: divisions,
          activeColor: activeColor,
          labels: RangeLabels(
            _formatValue(startValue),
            _formatValue(endValue),
          ),
          onChanged: onChanged,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _formatValue(startValue),
              style: AppTypography.caption,
            ),
            Text(
              _formatValue(endValue),
              style: AppTypography.caption,
            ),
          ],
        ),
      ],
    );
  }

  String _formatValue(double value) {
    final formatted = value.toInt().toString();
    return unit != null ? '$formatted $unit' : formatted;
  }
}

/// Single Value Slider (for distance, etc.)
class AppSlider extends StatelessWidget {
  final double minValue;
  final double maxValue;
  final double value;
  final ValueChanged<double> onChanged;
  final String? label;
  final String? unit;
  final int? divisions;

  const AppSlider({
    super.key,
    required this.minValue,
    required this.maxValue,
    required this.value,
    required this.onChanged,
    this.label,
    this.unit,
    this.divisions,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final activeColor = isDark ? AppDarkColors.primary : AppColors.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              label!,
              style: AppTypography.bodyMedium,
            ),
          ),
        Slider(
          value: value,
          min: minValue,
          max: maxValue,
          divisions: divisions,
          activeColor: activeColor,
          label: _formatValue(value),
          onChanged: onChanged,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            _formatValue(value),
            style: AppTypography.caption,
          ),
        ),
      ],
    );
  }

  String _formatValue(double value) {
    final formatted = value.toInt().toString();
    return unit != null ? '$formatted $unit' : formatted;
  }
}

