import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_time_picker.dart';
import '../../../core/constants/app_routes.dart';

/// Birth Time Screen
/// Step 5 in account creation flow
class BirthTimeScreen extends StatefulWidget {
  const BirthTimeScreen({super.key});

  @override
  State<BirthTimeScreen> createState() => _BirthTimeScreenState();
}

class _BirthTimeScreenState extends State<BirthTimeScreen> {
  TimeOfDay? _selectedTime;
  bool _unknownTime = false;
  
  // Progress: Step 5 out of 10 (approximately 50% = 215px / 327px)
  final double _progress = 215 / 327;

  void _handleNext() {
    // If unknown, use 12:00 as default
    // TODO: Save birth time to account creation state
    context.push(AppRoutes.createAccountBirthLocation);
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
                          'Doğum Saatini Gir',
                          style: AppTypography.h3.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: AppTypography.medium,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Daha doğru astrolojik eşleşmeler için doğum saatini belirtmen harika olur!',
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
            
            // Time picker
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Column(
                  children: [
                    AppTimePicker(
                      selectedTime: _selectedTime,
                      onTimeSelected: (time) {
                        setState(() {
                          _selectedTime = time;
                          _unknownTime = false;
                        });
                      },
                    ),
                    const SizedBox(height: AppSpacing.xl),
                    // Unknown time option
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _unknownTime = !_unknownTime;
                          if (_unknownTime) {
                            _selectedTime = null;
                          }
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(AppSpacing.md),
                        decoration: BoxDecoration(
                          color: isDark ? AppDarkColors.surface : AppColors.surface,
                          border: Border.all(
                            color: isDark ? AppDarkColors.border : AppColors.border,
                            width: 1,
                          ),
                          borderRadius: AppBorderRadius.medium,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Doğum saatimi bilmiyorum.',
                                    style: AppTypography.bodyMedium.copyWith(
                                      color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '(saat 12.00 baz alınacaktır)',
                                    style: AppTypography.caption.copyWith(
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: _unknownTime ? AppColors.primary : AppColors.border,
                                  width: 1,
                                ),
                                color: _unknownTime ? AppColors.primary : Colors.transparent,
                              ),
                              child: _unknownTime
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
                  ],
                ),
              ),
            ),
            
            // Bottom button
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: AppButton(
                label: 'İlerle',
                onPressed: (_selectedTime != null || _unknownTime) ? _handleNext : null,
                fullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

