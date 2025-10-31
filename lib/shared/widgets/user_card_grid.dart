import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../data/models/user_model.dart';

/// User Card Grid Widget
/// Compact card for grid layout in discover screen
class UserCardGrid extends StatelessWidget {
  final UserModel user;
  final VoidCallback? onTap;
  final String? jobTitle;
  final int? age;

  const UserCardGrid({
    super.key,
    required this.user,
    this.onTap,
    this.jobTitle,
    this.age,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppBorderRadius.medium,
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            // User image
            if (user.photoUrls != null && user.photoUrls!.isNotEmpty)
              Positioned.fill(
                child: CachedNetworkImage(
                  imageUrl: user.photoUrls!.first,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: AppColors.border,
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: AppColors.border,
                    child: Icon(
                      Icons.person,
                      color: AppColors.textSecondary,
                      size: 24,
                    ),
                  ),
                ),
              ),

            // Gradient overlay at bottom
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withValues(alpha: 0.7),
                    ],
                  ),
                ),
              ),
            ),

            // User info at bottom
            Positioned(
              left: 10,
              bottom: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          '${user.displayName.split(' ').first}${age != null ? ', $age' : ''}',
                          style: AppTypography.bodyMedium.copyWith(
                            color: Colors.white,
                            fontWeight: AppTypography.medium,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (user.isVerified)
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.check_circle,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                    ],
                  ),
                  if (jobTitle != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          jobTitle!,
                          style: AppTypography.caption.copyWith(
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // Action buttons at top right
            Positioned(
              right: 4,
              top: 4,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      width: 24,
                      height: 24,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.09),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.white,
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
}

