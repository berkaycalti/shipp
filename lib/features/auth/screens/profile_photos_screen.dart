import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../core/constants/app_routes.dart';

/// Profile Photos Screen
/// Step 9 in account creation flow
class ProfilePhotosScreen extends StatefulWidget {
  const ProfilePhotosScreen({super.key});

  @override
  State<ProfilePhotosScreen> createState() => _ProfilePhotosScreenState();
}

class _ProfilePhotosScreenState extends State<ProfilePhotosScreen> {
  final List<String?> _photos = List.filled(6, null); // 1 main + 5 additional
  
  // Progress: Step 9 out of 10 (approximately 90% = full progress bar)
  final double _progress = 1.0;

  void _handleNext() {
    final photoCount = _photos.where((photo) => photo != null).length;
    if (photoCount < 2) {
      // TODO: Show error - at least 2 photos required
      return;
    }
    
    // TODO: Save photos to account creation state
    context.push(AppRoutes.createAccountWelcome);
  }

  void _handleAddPhoto(int index) {
    // TODO: Open image picker
    // For now, just mock
    setState(() {
      _photos[index] = 'https://picsum.photos/400/600?random=$index';
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.background : AppColors.background;
    final photoCount = _photos.where((photo) => photo != null).length;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // Top section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Column(
                children: [
                  const SizedBox(height: AppSpacing.xl),
                  
                  // Back button
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.lg),
                  
                  // Progress bar
                  Container(
                    width: double.infinity,
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0x198390A1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * _progress,
                            height: 5,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  // Title and description
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Profil Fotoğrafı Ekle',
                          style: AppTypography.h3.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: AppTypography.medium,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Devam edebilmek için en az 2 fotoğraf yüklemelisin.',
                            style: AppTypography.bodyMedium.copyWith(
                              color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: AppSpacing.xl),
            
            // Photos grid
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Column(
                  children: [
                    // Main photo
                    GestureDetector(
                      onTap: () => _handleAddPhoto(0),
                      child: Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          color: isDark ? AppDarkColors.surface : AppColors.surface,
                          borderRadius: AppBorderRadius.small,
                          border: Border.all(
                            color: isDark ? AppDarkColors.border : AppColors.border,
                            width: 1,
                          ),
                        ),
                        child: _photos[0] != null
                            ? ClipRRect(
                                borderRadius: AppBorderRadius.small,
                                child: Image.network(
                                  _photos[0]!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) => _buildAddIcon(),
                                ),
                              )
                            : _buildAddIcon(),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    // Additional photos (5 slots)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        5,
                        (index) => GestureDetector(
                          onTap: () => _handleAddPhoto(index + 1),
                          child: Container(
                            width: 102,
                            height: 102,
                            decoration: BoxDecoration(
                              color: isDark ? AppDarkColors.surface : AppColors.surface,
                              borderRadius: AppBorderRadius.small,
                              border: Border.all(
                                color: isDark ? AppDarkColors.border : AppColors.border,
                                width: 1,
                              ),
                            ),
                            child: _photos[index + 1] != null
                                ? ClipRRect(
                                    borderRadius: AppBorderRadius.small,
                                    child: Image.network(
                                      _photos[index + 1]!,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) => _buildSmallAddIcon(),
                                    ),
                                  )
                                : _buildSmallAddIcon(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Bottom button
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: AppButton(
                label: 'İlerle',
                onPressed: photoCount >= 2 ? _handleNext : null,
                fullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddIcon() {
    return Center(
      child: Icon(
        Icons.add_circle_outline,
        size: 48,
        color: AppColors.textSecondary,
      ),
    );
  }

  Widget _buildSmallAddIcon() {
    return Center(
      child: Icon(
        Icons.add,
        size: 24,
        color: AppColors.textSecondary,
      ),
    );
  }
}

