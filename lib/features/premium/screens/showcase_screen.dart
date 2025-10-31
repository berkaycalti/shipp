import 'package:flutter/material.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../shared/widgets/user_card_grid.dart';
import '../../../data/models/user_model.dart';

/// Showcase Screen
/// Premium showcase with user profiles, filters, and "Seni Tıklayanlar" section
class ShowcaseScreen extends StatefulWidget {
  const ShowcaseScreen({super.key});

  @override
  State<ShowcaseScreen> createState() => _ShowcaseScreenState();
}

class _ShowcaseScreenState extends State<ShowcaseScreen> {
  String _selectedFilter = 'En Son';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header with "SAHNE" title and boost badge
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.md,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SAHNE',
                    style: AppTypography.h2.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: AppTypography.bold,
                    ),
                  ),
                  Row(
                    children: [
                      // Boost badge (x1)
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.03),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: AppColors.textPrimary,
                            ),
                            const SizedBox(width: 2),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'x',
                                    style: AppTypography.caption.copyWith(
                                      color: AppColors.textPrimary,
                                      fontWeight: AppTypography.medium,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '1',
                                    style: AppTypography.bodySmall.copyWith(
                                      color: AppColors.textPrimary,
                                      fontWeight: AppTypography.medium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      // "ÖNE ÇIK" button
                      TextButton(
                        onPressed: () {
                          // TODO: Navigate to boost/payment screen
                        },
                        child: Text(
                          'ÖNE ÇIK',
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.primary,
                            fontWeight: AppTypography.medium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Filter chips
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildFilterChip('En Son', _selectedFilter == 'En Son'),
                    const SizedBox(width: AppSpacing.sm),
                    _buildFilterChip('En Yakındakiler', _selectedFilter == 'En Yakındakiler'),
                    const SizedBox(width: AppSpacing.sm),
                    _buildFilterChip('Yüksek Uyumluluk', _selectedFilter == 'Yüksek Uyumluluk'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: AppSpacing.lg),

            // "Seni Tıklayanlar" Section Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Seni Tıklayanlar',
                    style: AppTypography.bodyLarge.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: AppTypography.medium,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: Navigate to all who viewed me screen
                    },
                    child: Text(
                      'Tümünü Gör',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                        fontWeight: AppTypography.regular,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppSpacing.md),

            // User cards grid
            Expanded(
              child: _buildUserGrid(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedFilter = label;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : AppColors.border.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: AppTypography.bodySmall.copyWith(
            color: isSelected
                ? Colors.white
                : AppColors.textSecondary.withValues(alpha: 0.7),
            fontWeight: AppTypography.medium,
          ),
        ),
      ),
    );
  }

  Widget _buildUserGrid() {
    // TODO: Replace with actual data from API based on selected filter
    final mockUsers = [
      _createMockUser('Ecem', 24, 'Moda Tasarımcısı', isVerified: true),
      _createMockUser('Sinem', 32, 'Mimar'),
      _createMockUser('Açelya', 28, 'Mimar'),
      _createMockUser('Melis', 24, 'İç Mimar'),
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(AppSpacing.md),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 160 / 190,
        crossAxisSpacing: AppSpacing.md,
        mainAxisSpacing: AppSpacing.md,
      ),
      itemCount: mockUsers.length,
      itemBuilder: (context, index) {
        final user = mockUsers[index];
        return UserCardGrid(
          user: user,
          age: user.birthDate != null
              ? DateTime.now().difference(user.birthDate!).inDays ~/ 365
              : null,
          jobTitle: _getJobTitle(user.displayName),
          onTap: () {
            // TODO: Navigate to profile detail screen
          },
        );
      },
    );
  }

  UserModel _createMockUser(String name, int age, String job, {bool isVerified = false}) {
    final birthDate = DateTime.now().subtract(Duration(days: age * 365));
    return UserModel(
      id: name.toLowerCase(),
      displayName: name,
      birthDate: birthDate,
      isVerified: isVerified,
      photoUrls: [], // TODO: Add mock image URLs when available
      jobTitle: job,
    );
  }

  String? _getJobTitle(String name) {
    final jobMap = {
      'Ecem': 'Moda Tasarımcısı',
      'Sinem': 'Mimar',
      'Açelya': 'Mimar',
      'Melis': 'İç Mimar',
    };
    return jobMap[name];
  }
}
