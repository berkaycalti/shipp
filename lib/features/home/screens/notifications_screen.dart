import 'package:flutter/material.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_spacing.dart';

/// Notifications Screen
/// Displays all user notifications
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Mock notifications data
    final List<Map<String, dynamic>> notifications = [
      {
        'id': '1',
        'type': 'match',
        'title': 'Tebrikler! Shipp\'lendiniz!',
        'message': 'Konuşmaya başlamak ister misin?',
        'timestamp': '1 saat önce',
        'iconColor': const Color(0x19FF3366),
      },
      {
        'id': '2',
        'type': 'like',
        'title': '[Ad] profilini beğendi!',
        'message': 'Sen de bakmak ister misin?',
        'timestamp': '1 saat önce',
        'iconColor': const Color(0x19FFC94D),
      },
      {
        'id': '3',
        'type': 'message',
        'title': 'Yeni mesajın var!',
        'message': '[Ad] sana bir şeyler yazdı.',
        'timestamp': '5 saat önce',
        'iconColor': const Color(0x190FBEBE),
      },
      {
        'id': '4',
        'type': 'nearby',
        'title': '[Semt/konum] çevrende 10+ yeni kullanıcı var!',
        'message': 'Göz atmak ister misin?',
        'timestamp': '1 gün önce',
        'iconColor': const Color(0x1977CC00),
      },
      {
        'id': '5',
        'type': 'views',
        'title': 'Profilini 100 Kişi Görüntüledi!',
        'message': 'Profilini öne çıkar!',
        'timestamp': '1 gün önce',
        'iconColor': const Color(0x19BB00FF),
      },
      {
        'id': '6',
        'type': 'likes',
        'title': 'Seni beğenen ama eşleşmediğin kişiler var!',
        'message': 'Kim olduklarını görmek ister misin?',
        'timestamp': '1 gün önce',
        'iconColor': Colors.white.withValues(alpha: 0.10),
      },
    ];

    return Scaffold(
      backgroundColor: isDark ? AppDarkColors.background : AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Bildirimler',
          style: AppTypography.bodyMedium.copyWith(
            fontWeight: AppTypography.medium,
            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(AppSpacing.md),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return _buildNotificationItem(notification);
        },
      ),
    );
  }

  Widget _buildNotificationItem(Map<String, dynamic> notification) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: notification['iconColor'] as Color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.notifications_outlined,
              color: AppColors.primary,
              size: 20,
            ),
          ),
          
          const SizedBox(width: 12),
          
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Timestamp
                Text(
                  notification['timestamp'] as String,
                  style: AppTypography.caption.copyWith(
                    color: AppColors.textSecondary.withValues(alpha: 0.5),
                    fontWeight: AppTypography.regular,
                  ),
                ),
                const SizedBox(height: 5),
                
                // Title
                Text(
                  notification['title'] as String,
                  style: AppTypography.bodyMedium.copyWith(
                    fontWeight: AppTypography.medium,
                  ),
                ),
                const SizedBox(height: 5),
                
                // Message
                Text(
                  notification['message'] as String,
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.textSecondary.withValues(alpha: 0.5),
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
