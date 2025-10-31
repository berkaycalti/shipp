import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../core/constants/app_routes.dart';

/// Looking For Screen
/// Step 8 in account creation flow
class LookingForScreen extends StatefulWidget {
  const LookingForScreen({super.key});

  @override
  State<LookingForScreen> createState() => _LookingForScreenState();
}

class _LookingForScreenState extends State<LookingForScreen> {
  String? _selectedLookingFor;
  
  // Progress: Step 8 out of 10 (approximately 80% = 327px / 327px - but not final step)
  final double _progress = 327 / 327; // This will be adjusted if there are more steps

  final List<Map<String, dynamic>> _options = [
    {'value': 'serious', 'label': 'Ciddi İlişki', 'icon': Icons.favorite},
    {'value': 'friendship', 'label': 'Yeni Arkadaşlıklar', 'icon': Icons.people},
    {'value': 'casual', 'label': 'Heyecan', 'icon': Icons.local_fire_department},
    {'value': 'open', 'label': 'Her An Her Şey Olabilir', 'icon': Icons.explore},
    {'value': 'chat', 'label': 'Sohbet Muhabbet', 'icon': Icons.chat},
    {'value': 'not_sure', 'label': 'Kararsızım', 'icon': Icons.help_outline},
  ];

  void _handleNext() {
    if (_selectedLookingFor == null) return;
    
    // TODO: Save looking for preference to account creation state
    context.push(AppRoutes.createAccountPhotos);
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
                          'Ne Arıyorsun?',
                          style: AppTypography.h3.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: AppTypography.medium,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Bize ne aradığını söyle, sana en uygun eşleşmeleri sunalım.',
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
            
            // Options
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Column(
                  children: List.generate(
                    _options.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.md),
                      child: _buildOption(_options[index]),
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
                onPressed: _selectedLookingFor != null ? _handleNext : null,
                fullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(Map<String, dynamic> option) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isSelected = _selectedLookingFor == option['value'];
    final borderColor = isSelected
        ? AppColors.primary
        : (isDark ? AppDarkColors.border : AppColors.border);
    final bgColor = isDark ? AppDarkColors.surface : AppColors.surface;
    final textColor = isSelected
        ? AppColors.textPrimary
        : (isDark ? AppDarkColors.textPrimary.withValues(alpha: 0.5) : AppColors.textPrimary.withValues(alpha: 0.5));
    final fontWeight = isSelected ? FontWeight.w500 : FontWeight.w400;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLookingFor = option['value'];
        });
      },
      child: Opacity(
        opacity: isSelected ? 1.0 : 0.5,
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
              Icon(
                option['icon'] as IconData,
                size: 20,
                color: isSelected ? AppColors.primary : (isDark ? AppDarkColors.textSecondary : AppColors.textSecondary),
              ),
              const SizedBox(width: AppSpacing.sm),
              Text(
                option['label'],
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
      ),
    );
  }
}

