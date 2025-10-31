import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';

/// App Avatar Widget
/// Displays user profile image or initials
enum AvatarSize { small, medium, large, xlarge }

class AppAvatar extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final AvatarSize size;
  final bool isOnline;
  final bool isVerified;
  final VoidCallback? onTap;
  final Color? backgroundColor;

  const AppAvatar({
    super.key,
    this.imageUrl,
    this.name,
    this.size = AvatarSize.medium,
    this.isOnline = false,
    this.isVerified = false,
    this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final sizeValue = _getSize();
    final borderWidth = _getBorderWidth();

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: sizeValue,
            height: sizeValue,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isDark ? AppDarkColors.border : AppColors.border,
                width: borderWidth,
              ),
            ),
            child: ClipOval(
              child: imageUrl != null && imageUrl!.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: imageUrl!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => _buildPlaceholder(context),
                      errorWidget: (context, url, error) => _buildPlaceholder(context),
                    )
                  : _buildPlaceholder(context),
            ),
          ),
          if (isOnline)
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: _getOnlineIndicatorSize(),
                height: _getOnlineIndicatorSize(),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.success,
                  border: Border.all(
                    color: isDark ? AppDarkColors.background : AppColors.background,
                    width: 2,
                  ),
                ),
              ),
            ),
          if (isVerified)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isDark ? AppDarkColors.background : AppColors.background,
                ),
                child: Icon(
                  Icons.verified,
                  size: _getVerifiedIconSize(),
                  color: AppColors.success,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = backgroundColor ??
        (isDark ? AppDarkColors.border : AppColors.border);
    final textColor = isDark ? AppDarkColors.textPrimary : AppColors.textPrimary;

    return Container(
      color: bgColor,
      child: name != null && name!.isNotEmpty
          ? Center(
              child: Text(
                _getInitials(),
                style: TextStyle(
                  color: textColor,
                  fontSize: _getFontSize(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Icon(
              Icons.person,
              size: _getIconSize(),
              color: textColor,
            ),
    );
  }

  String _getInitials() {
    if (name == null || name!.isEmpty) return '';
    final parts = name!.trim().split(' ');
    if (parts.length == 1) {
      return parts[0].substring(0, 1).toUpperCase();
    }
    return (parts[0].substring(0, 1) + parts[1].substring(0, 1)).toUpperCase();
  }

  double _getSize() {
    switch (size) {
      case AvatarSize.small:
        return 32;
      case AvatarSize.medium:
        return 48;
      case AvatarSize.large:
        return 64;
      case AvatarSize.xlarge:
        return 96;
    }
  }

  double _getBorderWidth() {
    switch (size) {
      case AvatarSize.small:
      case AvatarSize.medium:
        return 2;
      case AvatarSize.large:
      case AvatarSize.xlarge:
        return 3;
    }
  }

  double _getOnlineIndicatorSize() {
    switch (size) {
      case AvatarSize.small:
        return 8;
      case AvatarSize.medium:
        return 10;
      case AvatarSize.large:
        return 12;
      case AvatarSize.xlarge:
        return 14;
    }
  }

  double _getVerifiedIconSize() {
    switch (size) {
      case AvatarSize.small:
        return 12;
      case AvatarSize.medium:
        return 16;
      case AvatarSize.large:
        return 20;
      case AvatarSize.xlarge:
        return 24;
    }
  }

  double _getFontSize() {
    switch (size) {
      case AvatarSize.small:
        return 12;
      case AvatarSize.medium:
        return 16;
      case AvatarSize.large:
        return 24;
      case AvatarSize.xlarge:
        return 32;
    }
  }

  double _getIconSize() {
    switch (size) {
      case AvatarSize.small:
        return 16;
      case AvatarSize.medium:
        return 24;
      case AvatarSize.large:
        return 32;
      case AvatarSize.xlarge:
        return 48;
    }
  }
}

