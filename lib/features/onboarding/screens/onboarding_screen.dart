import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../shared/widgets/app_button.dart';

/// Onboarding Screen
/// 3-step onboarding flow
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingPage> _pages = [
    OnboardingPage(
      title: 'Keşfet',
      subtitle: 'Aşk Yakınında Olabilir',
      description: 'Haritaya dokun, çevrendeki insanları gör ve yeni bağlantılar kur.',
      gradient: const LinearGradient(
        begin: Alignment(0.50, 0.66),
        end: Alignment(0.50, 0.45),
        colors: [Color(0xFFF9F9F9), Color(0x00F9F9F9)],
      ),
    ),
    OnboardingPage(
      title: 'Astroloji Tabanlı Eşleşme',
      subtitle: 'Yıldızların Gücüyle',
      description: 'Doğum haritanızla uyumlu eşleri keşfedin ve anlamlı bağlantılar kurun.',
      gradient: const LinearGradient(
        begin: Alignment(0.50, 0.66),
        end: Alignment(0.50, 0.45),
        colors: [Color(0xFFF9F9F9), Color(0x00F9F9F9)],
      ),
    ),
    OnboardingPage(
      title: 'Yolculuğuna Başla',
      subtitle: 'Profilini Oluştur',
      description: 'Kendini keşfet, profilini tamamla ve aşkın için yola çık.',
      gradient: const LinearGradient(
        begin: Alignment(0.50, 0.66),
        end: Alignment(0.50, 0.45),
        colors: [Color(0xFFF9F9F9), Color(0x00F9F9F9)],
      ),
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _goToLogin() {
    context.go(AppRoutes.registerLogin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: Stack(
        children: [
          // Background image placeholder
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://placehold.co/650x812"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          
          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: _pages[_currentPage].gradient,
              ),
            ),
          ),
          
          // Content
          SafeArea(
            child: Column(
              children: [
                // Status bar spacer
                const SizedBox(height: AppSpacing.lg),
                
                // PageView
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    itemCount: _pages.length,
                    itemBuilder: (context, index) {
                      return _buildOnboardingPage(_pages[index]);
                    },
                  ),
                ),
                
                // Page indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _pages.length,
                    (index) => Container(
                      width: index == _currentPage ? 24 : 12,
                      height: 2,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: index == _currentPage
                            ? AppColors.primary
                            : AppColors.border.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: AppSpacing.xl),
                
                // Action buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                  child: Column(
                    children: [
                      // Create Account button
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0x198390A1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          children: [
                            // Skip indicators (small circles)
                            ...List.generate(2, (index) => Container(
                              width: 36,
                              height: 36,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: const Color(0x078390A1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.more_horiz,
                                size: 24,
                                color: Color(0x078390A1),
                              ),
                            )),
                            
                            // Main button
                            Expanded(
                              child: AppButton(
                                label: 'Hesap Oluştur',
                                onPressed: _goToLogin,
                                fullWidth: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: AppSpacing.md),
                      
                      // "Hesabınız var mı, Giriş Yap?" link
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hesabınız var mı, ',
                              style: AppTypography.bodySmall.copyWith(
                                color: AppColors.textSecondary,
                              ),
                            ),
                            TextSpan(
                              text: 'Giriş Yap?',
                              style: AppTypography.bodySmall.copyWith(
                                color: AppColors.primary,
                                fontWeight: AppTypography.medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: AppSpacing.xl),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingPage(OnboardingPage page) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon placeholder
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.star,
              size: 36,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          
          const SizedBox(height: AppSpacing.xl * 2),
          
          // Title badge
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.sm,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              page.title,
              style: AppTypography.h4.copyWith(
                color: AppColors.textOnDark,
                fontWeight: AppTypography.medium,
              ),
            ),
          ),
          
          const SizedBox(height: AppSpacing.md),
          
          // Subtitle
          SizedBox(
            width: double.infinity,
            child: Text(
              page.subtitle,
              textAlign: TextAlign.center,
              style: AppTypography.h2.copyWith(
                color: const Color(0xFF1C1C1E),
                fontWeight: AppTypography.medium,
              ),
            ),
          ),
          
          const SizedBox(height: AppSpacing.lg),
          
          // Description
          SizedBox(
            width: double.infinity,
            child: Text(
              page.description,
              textAlign: TextAlign.center,
              style: AppTypography.bodyLarge.copyWith(
                color: AppColors.textSecondary,
                height: 1.38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage {
  final String title;
  final String subtitle;
  final String description;
  final LinearGradient gradient;

  OnboardingPage({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.gradient,
  });
}
