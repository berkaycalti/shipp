import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../design/tokens/app_spacing.dart';
import '../../data/models/user_model.dart';
import '../../data/models/astrology_model.dart';
import 'app_badge.dart';
import 'image_carousel.dart';

/// Profile Card Widget
/// Displays user profile information for discovery feed
class ProfileCard extends StatelessWidget {
  final UserModel user;
  final AstrologyProfileModel? astrologyProfile;
  final ZodiacSignModel? sunSign;
  final double? compatibilityScore;
  final double? distanceInKm;
  final VoidCallback? onTap;
  final bool showCompatibility;

  const ProfileCard({
    super.key,
    required this.user,
    this.astrologyProfile,
    this.sunSign,
    this.compatibilityScore,
    this.distanceInKm,
    this.onTap,
    this.showCompatibility = true,
  });

  int? _calculateAge() {
    if (user.birthDate == null) return null;
    final now = DateTime.now();
    final birth = user.birthDate!;
    int age = now.year - birth.year;
    if (now.month < birth.month ||
        (now.month == birth.month && now.day < birth.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.surface : AppColors.surface;
    final textColor = isDark ? AppDarkColors.textPrimary : AppColors.textPrimary;

    final age = _calculateAge();
    final photos = user.photoUrls ?? [];

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: AppBorderRadius.large,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: AppBorderRadius.large,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Carousel
              Stack(
                children: [
                  ImageCarousel(
                    imageUrls: photos,
                    height: 500,
                    showIndicator: true,
                    showPageNumbers: false,
                  ),
                  // Gradient overlay at bottom
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // User info overlay
                  Positioned(
                    bottom: AppSpacing.md,
                    left: AppSpacing.md,
                    right: AppSpacing.md,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                user.displayName,
                                style: AppTypography.h3.copyWith(
                                  color: AppColors.textOnDark,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            if (age != null)
                              Text(
                                '$age',
                                style: AppTypography.h3.copyWith(
                                  color: AppColors.textOnDark,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Row(
                          children: [
                            if (sunSign != null)
                              ZodiacBadge(
                                zodiacSign: sunSign!.signName,
                                isCompact: true,
                              ),
                            if (sunSign != null && distanceInKm != null)
                              const SizedBox(width: AppSpacing.sm),
                            if (distanceInKm != null)
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 14,
                                    color: AppColors.textOnDark,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${distanceInKm!.toStringAsFixed(1)} km',
                                    style: AppTypography.caption.copyWith(
                                      color: AppColors.textOnDark,
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Compatibility badge (top right)
                  if (showCompatibility && compatibilityScore != null)
                    Positioned(
                      top: AppSpacing.md,
                      right: AppSpacing.md,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                          vertical: AppSpacing.sm,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.9),
                          borderRadius: AppBorderRadius.medium,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 16,
                              color: AppColors.textOnDark,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${compatibilityScore!.toStringAsFixed(0)}%',
                              style: AppTypography.label.copyWith(
                                color: AppColors.textOnDark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  // Verified badge
                  if (user.isVerified)
                    Positioned(
                      top: AppSpacing.md,
                      left: AppSpacing.md,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColors.success,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.verified,
                          size: 20,
                          color: AppColors.textOnDark,
                        ),
                      ),
                    ),
                ],
              ),
              // Bio section
              if (user.bio != null && user.bio!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.bio!,
                        style: AppTypography.bodyMedium.copyWith(
                          color: textColor,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

