import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';
import '../../design/tokens/app_spacing.dart';
import 'app_button.dart';

/// Empty State Widget
/// Displays different empty state variations
class EmptyState extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? message;
  final String? actionLabel;
  final VoidCallback? onAction;
  final Widget? customIcon;

  const EmptyState({
    super.key,
    this.icon,
    required this.title,
    this.message,
    this.actionLabel,
    this.onAction,
    this.customIcon,
  }) : assert(icon != null || customIcon != null, 'Either icon or customIcon must be provided');

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? AppDarkColors.textSecondary : AppColors.textSecondary;
    final iconColor = isDark ? AppDarkColors.textTertiary : AppColors.textTertiary;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (customIcon != null)
              customIcon!
            else if (icon != null)
              Icon(
                icon,
                size: 80,
                color: iconColor,
              ),
            const SizedBox(height: AppSpacing.xl),
            Text(
              title,
              style: AppTypography.h3.copyWith(
                color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            if (message != null) ...[
              const SizedBox(height: AppSpacing.md),
              Text(
                message!,
                style: AppTypography.bodyMedium.copyWith(
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
            if (actionLabel != null && onAction != null) ...[
              const SizedBox(height: AppSpacing.xl),
              AppButton(
                label: actionLabel!,
                onPressed: onAction!,
                fullWidth: false,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// No Matches Empty State
class NoMatchesEmptyState extends StatelessWidget {
  final VoidCallback? onRefresh;

  const NoMatchesEmptyState({
    super.key,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      icon: Icons.favorite_border,
      title: 'No matches yet',
      message: 'Keep swiping to find your perfect match!',
      actionLabel: onRefresh != null ? 'Refresh' : null,
      onAction: onRefresh,
    );
  }
}

/// No Messages Empty State
class NoMessagesEmptyState extends StatelessWidget {
  final VoidCallback? onStartChat;

  const NoMessagesEmptyState({
    super.key,
    this.onStartChat,
  });

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      icon: Icons.chat_bubble_outline,
      title: 'No messages',
      message: 'Start a conversation with your matches',
      actionLabel: onStartChat != null ? 'Find matches' : null,
      onAction: onStartChat,
    );
  }
}

/// No Results Empty State
class NoResultsEmptyState extends StatelessWidget {
  final String? message;
  final VoidCallback? onRetry;

  const NoResultsEmptyState({
    super.key,
    this.message,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      icon: Icons.search_off,
      title: 'No results found',
      message: message ?? 'Try adjusting your filters',
      actionLabel: onRetry != null ? 'Retry' : null,
      onAction: onRetry,
    );
  }
}

/// Error Empty State
class ErrorEmptyState extends StatelessWidget {
  final String? message;
  final VoidCallback? onRetry;

  const ErrorEmptyState({
    super.key,
    this.message,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      icon: Icons.error_outline,
      title: 'Something went wrong',
      message: message ?? 'Please try again later',
      actionLabel: onRetry != null ? 'Retry' : null,
      onAction: onRetry,
    );
  }
}

