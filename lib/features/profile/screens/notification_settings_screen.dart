import 'package:flutter/material.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  // Notification settings state
  bool _messageNotifications = true;
  bool _matchNotifications = true;
  bool _profileUpdateNotifications = false;
  bool _premiumNotifications = true;
  bool _marketingNotifications = false;
  bool _soundEnabled = true;
  bool _vibrationEnabled = true;

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
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Bildirim Ayarları',
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
            // Messages Section
            _buildSection(
              context,
              'Mesajlar',
              [
                _buildSwitchTile(
                  context,
                  'Yeni mesajlar',
                  _messageNotifications,
                  (value) => setState(() => _messageNotifications = value),
                  icon: Icons.message,
                ),
              ],
              isDark,
            ),
            const SizedBox(height: AppSpacing.xl),
            // Matches Section
            _buildSection(
              context,
              'Eşleşmeler',
              [
                _buildSwitchTile(
                  context,
                  'Yeni eşleşmeler',
                  _matchNotifications,
                  (value) => setState(() => _matchNotifications = value),
                  icon: Icons.favorite,
                ),
              ],
              isDark,
            ),
            const SizedBox(height: AppSpacing.xl),
            // Profile Updates Section
            _buildSection(
              context,
              'Profil Güncellemeleri',
              [
                _buildSwitchTile(
                  context,
                  'Profil güncellemeleri',
                  _profileUpdateNotifications,
                  (value) =>
                      setState(() => _profileUpdateNotifications = value),
                  icon: Icons.person,
                ),
              ],
              isDark,
            ),
            const SizedBox(height: AppSpacing.xl),
            // Premium Section
            _buildSection(
              context,
              'Premium',
              [
                _buildSwitchTile(
                  context,
                  'Premium özellikler',
                  _premiumNotifications,
                  (value) => setState(() => _premiumNotifications = value),
                  icon: Icons.star,
                ),
              ],
              isDark,
            ),
            const SizedBox(height: AppSpacing.xl),
            // Marketing Section
            _buildSection(
              context,
              'Pazarlama',
              [
                _buildSwitchTile(
                  context,
                  'Kampanya ve promosyonlar',
                  _marketingNotifications,
                  (value) => setState(() => _marketingNotifications = value),
                  icon: Icons.local_offer,
                ),
              ],
              isDark,
            ),
            const SizedBox(height: AppSpacing.xl),
            // Sound & Vibration Section
            _buildSection(
              context,
              'Ses & Titreşim',
              [
                _buildSwitchTile(
                  context,
                  'Ses',
                  _soundEnabled,
                  (value) => setState(() => _soundEnabled = value),
                  icon: Icons.volume_up,
                ),
                const SizedBox(height: AppSpacing.sm),
                _buildSwitchTile(
                  context,
                  'Titreşim',
                  _vibrationEnabled,
                  (value) => setState(() => _vibrationEnabled = value),
                  icon: Icons.vibration,
                ),
              ],
              isDark,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    List<Widget> children,
    bool isDark,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.h3.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Container(
          decoration: BoxDecoration(
            color: isDark ? AppDarkColors.surface : AppColors.surface,
            border: Border.all(
              color: isDark ? AppDarkColors.border : AppColors.border,
            ),
            borderRadius: AppBorderRadius.medium,
          ),
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildSwitchTile(
    BuildContext context,
    String title,
    bool value,
    ValueChanged<bool> onChanged, {
    IconData? icon,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final borderColor = isDark ? AppDarkColors.border : AppColors.border;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: borderColor,
            width: 1,
          ),
        ),
      ),
      child: ListTile(
        leading: icon != null
            ? Icon(
                icon,
                color: isDark ? AppColors.textSecondary : AppColors.textSecondary,
              )
            : null,
        title: Text(
          title,
          style: AppTypography.bodyMedium.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        trailing: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.primary,
        ),
      ),
    );
  }
}

