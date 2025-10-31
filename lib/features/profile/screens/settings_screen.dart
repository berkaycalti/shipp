import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_avatar.dart' show AppAvatar, AvatarSize;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          'Ayarlar',
          style: AppTypography.h2.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenMargin),
        child: Column(
          children: [
            // Profile Section
            _buildProfileSection(context, isDark),
            const SizedBox(height: AppSpacing.xl),
            // Settings Menu
            _buildSettingsMenu(context, isDark),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection(BuildContext context, bool isDark) {
    // Mock user data
    const userName = 'Berkay';
    const userAge = 28;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: isDark ? AppDarkColors.surface : AppColors.surface,
        border: Border.all(
          color: isDark ? AppDarkColors.border : AppColors.border,
        ),
        borderRadius: AppBorderRadius.medium,
      ),
      child: Row(
        children: [
          const AppAvatar(
            size: AvatarSize.large,
            name: userName,
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$userName, $userAge',
                  style: AppTypography.h3.copyWith(
                    color: isDark
                        ? AppColors.textOnDark
                        : AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  'Premium Üye',
                  style: AppTypography.caption.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: isDark ? AppColors.textSecondary : AppColors.textSecondary,
            ),
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsMenu(BuildContext context, bool isDark) {
    final menuItems = [
      {
        'title': 'Profil Ayarları',
        'route': AppRoutes.profileSettings,
        'icon': Icons.person,
      },
      {
        'title': 'Bildirim Ayarları',
        'route': AppRoutes.notificationSettings,
        'icon': Icons.notifications,
      },
      {
        'title': 'Üyelik',
        'route': AppRoutes.membership,
        'icon': Icons.star,
      },
      {
        'title': 'Gizlilik Politikası',
        'route': AppRoutes.termsAndPrivacy,
        'icon': Icons.lock,
        'params': {'tab': 'privacy'},
      },
      {
        'title': 'Kullanım Şartları',
        'route': AppRoutes.termsAndPrivacy,
        'icon': Icons.description,
        'params': {'tab': 'terms'},
      },
      {
        'title': 'Destek Talebi Oluştur',
        'route': null, // TODO: Create support route
        'icon': Icons.help_outline,
      },
      {
        'title': 'Çıkış Yap',
        'route': null,
        'icon': Icons.logout,
        'isDestructive': true,
      },
    ];

    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppDarkColors.surface : AppColors.surface,
        border: Border.all(
          color: isDark ? AppDarkColors.border : AppColors.border,
        ),
        borderRadius: AppBorderRadius.medium,
      ),
      child: Column(
        children: List.generate(
          menuItems.length,
          (index) {
            final item = menuItems[index];
            final isLast = index == menuItems.length - 1;
            final isDestructive = item['isDestructive'] == true;

            return _buildMenuItem(
              context,
              item['title'] as String,
              item['icon'] as IconData,
              () {
                if (item['route'] != null) {
                  final route = item['route'] as String;
                  final params = item['params'] as Map<String, String>?;
                  if (params != null) {
                    context.push('$route?${Uri(queryParameters: params).query}');
                  } else {
                    context.push(route);
                  }
                } else if (isDestructive) {
                  _showLogoutDialog(context);
                } else {
                  // TODO: Handle support request
                }
              },
              isDark,
              isLast: isLast,
              isDestructive: isDestructive,
            );
          },
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap,
    bool isDark, {
    bool isLast = false,
    bool isDestructive = false,
  }) {
    final borderColor = isDark ? AppDarkColors.border : AppColors.border;
    final textColor = isDestructive
        ? AppColors.error
        : (isDark ? AppColors.textOnDark : AppColors.textPrimary);
    final iconColor = isDestructive
        ? AppColors.error
        : (isDark ? AppColors.textSecondary : AppColors.textSecondary);

    return Container(
      decoration: BoxDecoration(
        border: isLast
            ? null
            : Border(
                bottom: BorderSide(
                  color: borderColor,
                  width: 1,
                ),
              ),
      ),
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(
          title,
          style: AppTypography.bodyMedium.copyWith(
            color: textColor,
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: isDark ? AppColors.textSecondary : AppColors.textSecondary,
        ),
        onTap: onTap,
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Çıkış Yap'),
        content: const Text('Çıkış yapmak istediğinize emin misiniz?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('İptal'),
          ),
          TextButton(
            onPressed: () {
              // TODO: Implement logout
              Navigator.of(context).pop();
              // Navigate to login
            },
            style: TextButton.styleFrom(
              foregroundColor: AppColors.error,
            ),
            child: const Text('Çıkış Yap'),
          ),
        ],
      ),
    );
  }
}

