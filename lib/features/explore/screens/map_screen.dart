import 'package:flutter/material.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_spacing.dart';

/// Map/Explore Screen
/// Dark theme with user avatars positioned on map
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: Stack(
        children: [
          // Map background (placeholder)
          Positioned.fill(
            child: Container(
              color: const Color(0xFF2A2A2A),
              child: const Center(
                child: Text(
                  'Map View\n(TODO: Integrate Google Maps)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
          ),

          // Header
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Visibility toggle
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.09),
                      border: Border.all(
                        width: 1,
                        color: const Color(0x26FFF8F8),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Görünürlük',
                          style: AppTypography.bodyMedium.copyWith(
                            color: Colors.white,
                            fontWeight: AppTypography.medium,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        Icon(
                          Icons.chevron_right,
                          size: 24,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  // Action buttons
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.09),
                          border: Border.all(
                            width: 1,
                            color: const Color(0x26FFF8F8),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.tune,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.09),
                          border: Border.all(
                            width: 1,
                            color: const Color(0x26FFF8F8),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // User avatars positioned on map (mock positions)
          // These would be calculated based on actual map coordinates
          Positioned(
            left: 26,
            top: 520,
            child: _buildUserAvatar(
              imageUrl: null,
              onTap: () {
                // TODO: Show user profile
              },
            ),
          ),
          Positioned(
            left: 209,
            top: 533,
            child: _buildUserAvatar(
              imageUrl: null,
              onTap: () {
                // TODO: Show user profile
              },
            ),
          ),
          Positioned(
            left: 63,
            top: 124,
            child: _buildUserAvatar(
              imageUrl: null,
              onTap: () {
                // TODO: Show user profile
              },
            ),
          ),
          Positioned(
            left: 299,
            top: 155,
            child: _buildUserAvatar(
              imageUrl: null,
              onTap: () {
                // TODO: Show user profile
              },
            ),
          ),

          // Center user (focused)
          Positioned(
            left: 152,
            top: 370,
            child: _buildCenteredUser(),
          ),

          // Action buttons on right side
          Positioned(
            right: AppSpacing.lg,
            top: 542,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildActionButton(
                  icon: 'heart',
                  onTap: () {},
                ),
                const SizedBox(height: AppSpacing.lg),
                _buildActionButton(
                  icon: 'star',
                  onTap: () {},
                ),
                const SizedBox(height: AppSpacing.lg),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.09),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.close,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserAvatar({
    String? imageUrl,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: imageUrl != null
              ? Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                )
              : Container(
                  color: AppColors.border,
                ),
        ),
      ),
    );
  }

  Widget _buildCenteredUser() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
          ),
          child: ClipOval(
            child: Container(
              color: AppColors.border,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF343434),
            border: Border.all(
              width: 1,
              color: Colors.black.withValues(alpha: 0.08),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Ecem, ',
                    style: AppTypography.bodyLarge.copyWith(
                      color: Colors.white,
                      fontWeight: AppTypography.medium,
                    ),
                  ),
                  Text(
                    '24',
                    style: AppTypography.bodyLarge.copyWith(
                      color: Colors.white.withValues(alpha: 0.5),
                      fontWeight: AppTypography.medium,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.check_circle,
                    size: 14,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.09),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  'Profili Gör',
                  style: AppTypography.caption.copyWith(
                    color: Colors.white,
                    fontWeight: AppTypography.medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required String icon,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 32,
      height: 32,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.09),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        _getIconData(icon),
        size: 16,
        color: Colors.white,
      ),
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'heart':
        return Icons.favorite;
      case 'star':
        return Icons.star;
      default:
        return Icons.circle;
    }
  }
}
