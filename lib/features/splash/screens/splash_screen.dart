import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';

/// Splash Screen
/// Initial screen shown on app launch
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  void _navigateToNext() {
    // TODO: Check if user is authenticated
    // TODO: Check if onboarding is completed
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        context.go(AppRoutes.onboarding);
        // Replace with: context.go(AppRoutes.home) if authenticated
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.background : AppColors.background;

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: isDark ? AppDarkColors.border : AppColors.border,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                size: 80,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 24),
            
            // App Name
            Text(
              'Shipp',
              style: AppTypography.h1.copyWith(
                color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                fontWeight: AppTypography.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
