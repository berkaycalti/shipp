import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_badge.dart';
import '../../../shared/widgets/image_carousel.dart';
import '../../../shared/widgets/app_button.dart';

class ProfileDetailScreen extends StatelessWidget {
  final String? userId;
  final String? userName;
  final String? userAvatarUrl;

  const ProfileDetailScreen({
    super.key,
    this.userId,
    this.userName,
    this.userAvatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.surface : AppColors.surface;

    // Mock data - will be replaced with actual data from provider
    final photoUrls = [
      'https://picsum.photos/400/600?random=10',
      'https://picsum.photos/400/600?random=11',
      'https://picsum.photos/400/600?random=12',
    ];
    final name = userName ?? 'Ayşe';
    final age = 26;
    final zodiacSign = 'Yengeç';
    const bio =
        'Sanat ve müzik tutkunuyum. Yeni yerler keşfetmeyi ve insanlarla derin sohbetler yapmayı severim.';
    const job = 'Grafik Tasarımcı';
    const location = 'İstanbul, Türkiye';
    const compatibilityScore = 85;

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
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
            ),
            onPressed: () => _showActionMenu(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Photo Gallery
            ImageCarousel(
              imageUrls: photoUrls,
              height: 400,
              showIndicator: true,
              showPageNumbers: true,
            ),
            // Profile Info
            Padding(
              padding: const EdgeInsets.all(AppSpacing.screenMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name, Age, Zodiac
                  Row(
                    children: [
                      Text(
                        '$name, $age',
                        style: AppTypography.h2.copyWith(
                          color: isDark
                              ? AppColors.textOnDark
                              : AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.xs),
                      ZodiacBadge(zodiacSign: zodiacSign),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    job,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  // Compatibility Score
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      color: isDark ? AppDarkColors.border : AppColors.border,
                      borderRadius: AppBorderRadius.medium,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.auto_awesome,
                          color: AppColors.primary,
                          size: 24,
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Uyumluluk Skoru',
                                style: AppTypography.caption.copyWith(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '%$compatibilityScore',
                                style: AppTypography.h3.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  // About Section
                  Text(
                    'Hakkında',
                    style: AppTypography.h3.copyWith(
                      color: isDark
                          ? AppColors.textOnDark
                          : AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    bio,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  // Details
                  _buildDetailItem(context, 'Konum', location, Icons.location_on, isDark),
                  const SizedBox(height: AppSpacing.md),
                  _buildDetailItem(context, 'Meslek', job, Icons.work, isDark),
                  const SizedBox(height: AppSpacing.md),
                  _buildDetailItem(context, 'Burç', zodiacSign, Icons.star, isDark),
                  const SizedBox(height: AppSpacing.xl),
                  // Action Buttons
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          label: 'Mesaj Gönder',
                          onPressed: () {
                            // TODO: Navigate to chat
                            context.push('/chat?userId=$userId&userName=$name&userAvatarUrl=$userAvatarUrl');
                          },
                          type: AppButtonType.primary,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: AppButton(
                          label: 'Beğen',
                          onPressed: () {
                            // TODO: Send like
                          },
                          type: AppButtonType.secondary,
                        ),
                      ),
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

  Widget _buildDetailItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
    bool isDark,
  ) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: AppColors.textSecondary,
        ),
        const SizedBox(width: AppSpacing.sm),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppTypography.caption.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: AppTypography.bodyMedium.copyWith(
                color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showActionMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.report, color: AppColors.error),
              title: const Text('Kullanıcıyı Bildir'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Show report dialog
              },
            ),
            ListTile(
              leading: const Icon(Icons.block, color: AppColors.error),
              title: const Text('Kullanıcıyı Engelle'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Block user
              },
            ),
          ],
        ),
      ),
    );
  }
}

