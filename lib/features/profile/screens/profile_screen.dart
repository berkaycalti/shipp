import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../shared/widgets/app_avatar.dart' show AppAvatar, AvatarSize;
import '../../../shared/widgets/app_badge.dart';
import '../../../shared/widgets/image_carousel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Mock data - will be replaced with actual user data later
  final List<String> _photoUrls = [
    'https://picsum.photos/400/600?random=1',
    'https://picsum.photos/400/600?random=2',
    'https://picsum.photos/400/600?random=3',
  ];
  final String _name = 'Berkay';
  final int _age = 28;
  final String _zodiacSign = 'Akrep';
  final String _bio =
      'Sanat, müzik ve seyahati seven biriyim. Yeni insanlarla tanışmayı ve derin sohbetler yapmayı severim.';
  final String _job = 'Yazılım Geliştirici';
  final String _location = 'İstanbul, Türkiye';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
            ),
            onPressed: () {
              context.push(AppRoutes.settings);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile Header
          _buildProfileHeader(),
          // Tab Bar
          _buildTabBar(),
          // Tab Content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildAboutTab(),
                _buildPhotosTab(),
                _buildAstrologyTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.surface : AppColors.surface;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.screenMargin,
        vertical: AppSpacing.lg,
      ),
      child: Column(
        children: [
          // Avatar
          Stack(
            children: [
              AppAvatar(
                imageUrl: _photoUrls.isNotEmpty ? _photoUrls[0] : null,
                size: AvatarSize.xlarge,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(AppSpacing.xs),
                  decoration: BoxDecoration(
                    color: bgColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    size: 20,
                    color: isDark
                        ? AppColors.textOnDark
                        : AppColors.textPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          // Name and Age
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_name, $_age',
                style: AppTypography.h2.copyWith(
                  color: isDark
                      ? AppColors.textOnDark
                      : AppColors.textPrimary,
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              ZodiacBadge(zodiacSign: _zodiacSign),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          // Job
          Text(
            _job,
            style: AppTypography.bodyMedium.copyWith(
              color: isDark ? AppColors.textSecondary : AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final selectedColor =
        isDark ? AppColors.primary : AppColors.primary;
    final unselectedColor = isDark
        ? AppColors.textSecondary
        : AppColors.textSecondary;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppDarkColors.surface : AppColors.surface,
        border: Border(
          bottom: BorderSide(
            color: isDark ? AppDarkColors.border : AppColors.border,
            width: 1,
          ),
        ),
      ),
      child: TabBar(
        controller: _tabController,
        indicatorColor: selectedColor,
        labelColor: selectedColor,
        unselectedLabelColor: unselectedColor,
        labelStyle: AppTypography.bodyMedium.copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: AppTypography.bodyMedium,
        tabs: const [
          Tab(text: 'Hakkımda'),
          Tab(text: 'Fotoğraflar'),
          Tab(text: 'Astroloji'),
        ],
      ),
    );
  }

  Widget _buildAboutTab() {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.screenMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bio Section
          Text(
            'Hakkımda',
            style: AppTypography.h3.copyWith(
              color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            _bio,
            style: AppTypography.bodyMedium.copyWith(
              color: isDark ? AppColors.textSecondary : AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          // Details Section
          _buildDetailItem('Konum', _location, Icons.location_on),
          const SizedBox(height: AppSpacing.md),
          _buildDetailItem('Meslek', _job, Icons.work),
          const SizedBox(height: AppSpacing.md),
          _buildDetailItem('Burç', _zodiacSign, Icons.star),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String label, String value, IconData icon) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: isDark ? AppColors.textSecondary : AppColors.textSecondary,
        ),
        const SizedBox(width: AppSpacing.sm),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppTypography.caption.copyWith(
                color:
                    isDark ? AppColors.textSecondary : AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: AppTypography.bodyMedium.copyWith(
                color:
                    isDark ? AppColors.textOnDark : AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPhotosTab() {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.screenMargin),
      child: ImageCarousel(
        imageUrls: _photoUrls,
        height: 500,
        showIndicator: true,
        showPageNumbers: true,
      ),
    );
  }

  Widget _buildAstrologyTab() {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.screenMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Astroloji Profili',
            style: AppTypography.h3.copyWith(
              color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          // Placeholder for astrology content
          Center(
            child: Column(
              children: [
                Icon(
                  Icons.auto_awesome,
                  size: 64,
                  color: AppColors.textSecondary,
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  'Astroloji bilgileri yakında eklenecek',
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

