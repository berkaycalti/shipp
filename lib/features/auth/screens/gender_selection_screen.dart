import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../core/constants/app_routes.dart';

/// Gender Selection Screen
/// Step 2 in account creation flow
class GenderSelectionScreen extends StatefulWidget {
  const GenderSelectionScreen({super.key});

  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String? _selectedGender;
  
  // Progress: Step 2 out of 10 (approximately 20% = 82px / 327px)
  final double _progress = 82 / 327;

  final List<Map<String, dynamic>> _genders = [
    {'value': 'male', 'label': 'Erkek'},
    {'value': 'female', 'label': 'Kadın'},
    {'value': 'other', 'label': 'Diğer'},
  ];

  void _handleNext() {
    if (_selectedGender == null) return;
    
    // TODO: Save gender to account creation state
    context.push(AppRoutes.createAccountMatchPreference);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.background : AppColors.background;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // Top section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Column(
                children: [
                  const SizedBox(height: AppSpacing.xl),
                  
                  // Back button
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.lg),
                  
                  // Progress bar
                  Container(
                    width: double.infinity,
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0x198390A1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * _progress,
                            height: 5,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  // Title and description
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cinsiyeti Seç',
                          style: AppTypography.h3.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: AppTypography.medium,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Kendini nasıl tanımladığını bilmek, sana en uygun eşleşmeleri sunmamıza yardımcı olur.',
                            style: AppTypography.bodyMedium.copyWith(
                              color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Gender options
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Column(
                  children: List.generate(
                    _genders.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.md),
                      child: _buildGenderOption(_genders[index]),
                    ),
                  ),
                ),
              ),
            ),
            
            // Bottom button
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: AppButton(
                label: 'İlerle',
                onPressed: _selectedGender != null ? _handleNext : null,
                fullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGenderOption(Map<String, dynamic> gender) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isSelected = _selectedGender == gender['value'];
    final borderColor = isSelected
        ? AppColors.primary
        : (isDark ? AppDarkColors.border : AppColors.border);
    final bgColor = isDark ? AppDarkColors.surface : AppColors.surface;
    final textColor = isSelected
        ? AppColors.textPrimary
        : (isDark ? AppDarkColors.textPrimary.withValues(alpha: 0.6) : AppColors.textPrimary.withValues(alpha: 0.6));
    final fontWeight = isSelected ? FontWeight.w500 : FontWeight.w400;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedGender = gender['value'];
        });
      },
      child: Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: AppBorderRadius.medium,
        ),
        child: Row(
          children: [
            // Icon placeholder (can be replaced with actual icon)
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.primary
                    : (isDark ? AppDarkColors.border : AppColors.border),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Text(
              gender['label'],
              style: AppTypography.bodyMedium.copyWith(
                color: textColor,
                fontWeight: fontWeight,
              ),
            ),
            const Spacer(),
            // Radio button
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.primary : borderColor,
                  width: 1,
                ),
                color: isSelected ? AppColors.primary : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      size: 10,
                      color: AppColors.textOnDark,
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

