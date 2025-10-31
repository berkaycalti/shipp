import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({super.key});

  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  int _selectedPlanIndex = 0;

  final List<Map<String, dynamic>> _plans = [
    {
      'name': '1 Aylık',
      'price': '₺99',
      'period': '/ay',
      'originalPrice': null,
      'discount': null,
    },
    {
      'name': '6 Aylık',
      'price': '₺89',
      'period': '/ay',
      'originalPrice': '₺594',
      'discount': '%10',
    },
    {
      'name': '12 Aylık',
      'price': '₺79',
      'period': '/ay',
      'originalPrice': '₺1188',
      'discount': '%20',
    },
  ];

  final List<String> _features = [
    'Sınırsız beğeni',
    'Geri al (Pass geri al)',
    'Beğenilenleri gör',
    'Okunmamış mesajları gör',
    'Reklamları kaldır',
    'Spotlight özelliği',
    'Boost özelliği',
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.surface : AppColors.surface;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'ÜYELİK',
          style: AppTypography.h2.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Plan Selection
            Text(
              'Plan Seç',
              style: AppTypography.h3.copyWith(
                color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            ...List.generate(
              _plans.length,
              (index) => _buildPlanCard(
                context,
                index,
                _plans[index],
                isDark,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            // Features List
            Text(
              'Üyelik Avantajları',
              style: AppTypography.h3.copyWith(
                color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            ...List.generate(
              _features.length,
              (index) => _buildFeatureItem(context, _features[index], isDark),
            ),
            const SizedBox(height: AppSpacing.xl),
            // Continue Button
            AppButton(
              label: 'Devam Et',
              onPressed: () {
                // Navigate to payment steps
                context.push(AppRoutes.paymentSteps);
              },
              type: AppButtonType.primary,
              fullWidth: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanCard(
    BuildContext context,
    int index,
    Map<String, dynamic> plan,
    bool isDark,
  ) {
    final isSelected = _selectedPlanIndex == index;
    final borderColor = isSelected
        ? AppColors.primary
        : (isDark ? AppDarkColors.border : AppColors.border);
    final cardBgColor = isDark ? AppDarkColors.surface : AppColors.surface;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPlanIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: AppSpacing.md),
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: cardBgColor,
          border: Border.all(
            color: borderColor,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: AppBorderRadius.medium,
        ),
        child: Row(
          children: [
            // Radio Button
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.primary : borderColor,
                  width: 2,
                ),
                color: isSelected ? AppColors.primary : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      size: 16,
                      color: AppColors.textOnDark,
                    )
                  : null,
            ),
            const SizedBox(width: AppSpacing.md),
            // Plan Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        plan['name'],
                        style: AppTypography.bodyLarge.copyWith(
                          color: isDark
                              ? AppColors.textOnDark
                              : AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (plan['discount'] != null) ...[
                        const SizedBox(width: AppSpacing.sm),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.sm,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.success,
                            borderRadius: AppBorderRadius.small,
                          ),
                          child: Text(
                            plan['discount'],
                            style: AppTypography.caption.copyWith(
                              color: AppColors.textOnDark,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Row(
                    children: [
                      Text(
                        plan['price'],
                        style: AppTypography.h3.copyWith(
                          color: isDark
                              ? AppColors.textOnDark
                              : AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        ' ${plan['period']}',
                        style: AppTypography.bodyMedium.copyWith(
                          color: isDark
                              ? AppColors.textSecondary
                              : AppColors.textSecondary,
                        ),
                      ),
                      if (plan['originalPrice'] != null) ...[
                        const SizedBox(width: AppSpacing.sm),
                        Text(
                          plan['originalPrice'],
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.textSecondary,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(
    BuildContext context,
    String feature,
    bool isDark,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            size: 20,
            color: AppColors.success,
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              feature,
              style: AppTypography.bodyMedium.copyWith(
                color: isDark
                    ? AppColors.textSecondary
                    : AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

