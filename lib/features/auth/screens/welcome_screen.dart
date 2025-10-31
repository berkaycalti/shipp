import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../core/constants/app_routes.dart';

/// Welcome Screen
/// Final step in account creation flow
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _showPremium = false;
  String? _selectedPlan;

  final List<Map<String, dynamic>> _rules = [
    {
      'title': 'Kendin gibi ol.',
      'description':
          'Fotoğrafların, yaşın ve profilin seni gerçekten yansıtmalı. Sahici ol, samimiyet bulaşıcıdır.',
      'icon': Icons.person,
    },
    {
      'title': 'Dikkatli ol.',
      'description':
          'Kendinle ilgili özel şeyleri paylaşmadan önce iki kez düşün. Güvende olman bizim için önemli.',
      'icon': Icons.security,
    },
    {
      'title': 'Nazik ol.',
      'description':
          'Herkes saygıyı hak eder. Başkalarına, sana nasıl davranılmasını istiyorsan öyle yaklaş.',
      'icon': Icons.favorite,
    },
    {
      'title': 'Destek ol.',
      'description':
          'Tuhaf ya da kötü bir şey mi gördün? Bize haber ver, birlikte burayı daha güvenli hale getirebiliriz.',
      'icon': Icons.support,
    },
  ];

  void _handleGetStarted() {
    if (_showPremium && _selectedPlan == null) {
      // Show premium selection
      return;
    }
    
    // TODO: Complete account creation
    context.go(AppRoutes.home);
  }

  void _handleSkipPremium() {
    // TODO: Complete account creation without premium
    context.go(AppRoutes.home);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.background : AppColors.background;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Column(
                children: [
                  const SizedBox(height: AppSpacing.xl * 2),
                  
                  // Welcome title
                  Row(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: AppColors.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.check_circle,
                          color: AppColors.primary,
                          size: 32,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: Text(
                          'Shipp\'e Hoş Geldin!',
                          style: AppTypography.h2.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  // Description
                  Text(
                    'Lütfen aşağıdaki topluluk kurallarına uymayı unutma.',
                    style: AppTypography.bodyMedium.copyWith(
                      color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.xl * 2),
                  
                  // Rules
                  ...List.generate(
                    _rules.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.xl),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: const EdgeInsets.only(top: 2),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(
                              _rules[index]['icon'],
                              size: 16,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _rules[index]['title'],
                                  style: AppTypography.h4.copyWith(
                                    color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.xs),
                                Text(
                                  _rules[index]['description'],
                                  style: AppTypography.bodyMedium.copyWith(
                                    color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  // Premium section
                  if (_showPremium) ...[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppSpacing.xl),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withValues(alpha: 0),
                            Colors.black.withValues(alpha: 0.8),
                          ],
                        ),
                        borderRadius: AppBorderRadius.large,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Henüz Premium\'a Geçmedin mi?',
                            style: AppTypography.bodyMedium.copyWith(
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Text(
                            'Shipp Plus ile Daha Fazlasını Keşfet',
                            style: AppTypography.h2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppSpacing.md),
                          Text(
                            'Her yıl otomatik olarak 299₺ karşılığında yenilenir. İstediğin zaman iptal edebilirsin.',
                            style: AppTypography.caption.copyWith(
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppSpacing.xl),
                          // Plans
                          _buildPremiumPlan('monthly', 'Aylık', '99₺/Aylık', false),
                          const SizedBox(height: AppSpacing.md),
                          _buildPremiumPlan('yearly', 'Yıllık', '299₺/Yıllık', true),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xl),
                  ],
                  
                  const SizedBox(height: 100), // Space for button
                ],
              ),
            ),
            
            // Bottom button
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(AppSpacing.lg),
                decoration: BoxDecoration(
                  color: bgColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, -5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppButton(
                      label: 'Başlayalım',
                      onPressed: _handleGetStarted,
                      fullWidth: true,
                    ),
                    if (_showPremium)
                      TextButton(
                        onPressed: _handleSkipPremium,
                        child: Text(
                          'Şimdilik Atla',
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPremiumPlan(String value, String label, String price, bool isRecommended) {
    final isSelected = _selectedPlan == value;
    final borderColor = isSelected
        ? AppColors.primary
        : (isRecommended ? AppColors.primary : const Color(0xFF757577));
    final bgColor = isSelected
        ? AppColors.primary.withValues(alpha: 0.2)
        : (isRecommended ? AppColors.primary.withValues(alpha: 0.1) : const Color(0xFF171B1F));

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPlan = value;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
          borderRadius: AppBorderRadius.medium,
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: isSelected ? AppColors.primary : borderColor,
                  width: 1,
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
            const SizedBox(width: AppSpacing.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTypography.caption.copyWith(
                    color: Colors.white.withValues(alpha: 0.85),
                  ),
                ),
                Text(
                  price,
                  style: AppTypography.bodyMedium.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            if (isRecommended) ...[
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.primary, Color(0xFFF4003D)],
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'En Popüler',
                  style: AppTypography.caption.copyWith(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '%25 INDIRIM',
                  style: AppTypography.caption.copyWith(
                    color: AppColors.primary,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

