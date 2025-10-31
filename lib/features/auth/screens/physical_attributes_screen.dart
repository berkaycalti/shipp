import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../core/constants/app_routes.dart';

/// Physical Attributes Screen
/// Step 7 in account creation flow
class PhysicalAttributesScreen extends StatefulWidget {
  const PhysicalAttributesScreen({super.key});

  @override
  State<PhysicalAttributesScreen> createState() => _PhysicalAttributesScreenState();
}

class _PhysicalAttributesScreenState extends State<PhysicalAttributesScreen> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  
  // Progress: Step 7 out of 10 (approximately 70% = 279px / 327px)
  final double _progress = 279 / 327;

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  void _handleNext() {
    if (_heightController.text.isEmpty || _weightController.text.isEmpty) return;
    
    // TODO: Save physical attributes to account creation state
    context.push(AppRoutes.createAccountLookingFor);
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
                          'Nasıl Gözüküyorsun?',
                          style: AppTypography.h3.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: AppTypography.medium,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Kendini kısaca anlat. Nasıl birisin,\nnasıl gözüküyorsun?',
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
            
            // Form
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Column(
                  children: [
                    // Height
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Boy',
                          style: AppTypography.bodyMedium.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Container(
                          width: double.infinity,
                          height: 47,
                          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                          decoration: BoxDecoration(
                            color: isDark ? AppDarkColors.surface : AppColors.surface,
                            border: Border.all(
                              color: isDark ? AppDarkColors.border : AppColors.border,
                              width: 1,
                            ),
                            borderRadius: AppBorderRadius.medium,
                          ),
                          child: TextField(
                            controller: _heightController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '180',
                              hintStyle: AppTypography.bodyMedium.copyWith(
                                color: AppColors.textSecondary.withValues(alpha: 0.5),
                              ),
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.arrow_drop_down,
                                color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                              ),
                            ),
                            style: AppTypography.bodyMedium.copyWith(
                              color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.md),
                    // Weight
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kilo',
                          style: AppTypography.bodyMedium.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Container(
                          width: double.infinity,
                          height: 47,
                          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                          decoration: BoxDecoration(
                            color: isDark ? AppDarkColors.surface : AppColors.surface,
                            border: Border.all(
                              color: isDark ? AppDarkColors.border : AppColors.border,
                              width: 1,
                            ),
                            borderRadius: AppBorderRadius.medium,
                          ),
                          child: TextField(
                            controller: _weightController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '80',
                              hintStyle: AppTypography.bodyMedium.copyWith(
                                color: AppColors.textSecondary.withValues(alpha: 0.5),
                              ),
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.arrow_drop_down,
                                color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                              ),
                            ),
                            style: AppTypography.bodyMedium.copyWith(
                              color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            // Bottom button
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: AppButton(
                label: 'İlerle',
                onPressed: (_heightController.text.isNotEmpty && _weightController.text.isNotEmpty)
                    ? _handleNext
                    : null,
                fullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

