import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/empty_state.dart';

/// Discover Screen
/// Grid layout with category filters
class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  String _selectedCategory = 'Aşk Arayan';
  final List<String> _categories = [
    'Aşk Arayan',
    'Tek Gecelik Arayanlar',
    'Yeni Gelenler',
    'Seni Beğenen',
    'Öneriler',
  ];

  // Mock data - will be replaced with provider later
  final List<Map<String, dynamic>> _mockUsers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.md,
              ),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0x071C1C1E),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 12,
                      ),
                      padding: EdgeInsets.zero,
                      onPressed: () => context.pop(),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Keşfet',
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: AppTypography.medium,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0x0C8391A1),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.tune,
                        size: 16,
                      ),
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        context.push(AppRoutes.filter);
                      },
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0x0C8391A1),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications_outlined,
                        size: 16,
                      ),
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        context.push(AppRoutes.notifications);
                      },
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Section title
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                      ),
                      child: Text(
                        'Bölgedeki En Popülerler',
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: AppTypography.medium,
                        ),
                      ),
                    ),

                    const SizedBox(height: AppSpacing.md),

                    // Category filters
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                      ),
                      child: SizedBox(
                        height: 32,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _categories.length,
                          itemBuilder: (context, index) {
                            final category = _categories[index];
                            final isSelected = _selectedCategory == category;
                            return Padding(
                              padding: const EdgeInsets.only(right: AppSpacing.sm),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedCategory = category;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? AppColors.primary
                                        : const Color(0x198390A1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    category,
                                    style: AppTypography.caption.copyWith(
                                      color: isSelected
                                          ? Colors.white
                                          : AppColors.textSecondary,
                                      ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: AppSpacing.md),

                    // User grid
                    _mockUsers.isEmpty
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.lg,
                            ),
                    child: NoResultsEmptyState(
                      message:
                          'Şu an için yakınlarda kimseyi bulamadık.\nAma arama alanını genişletebilir veya kriterlerini esnetebilirsin',
                    ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.lg,
                            ),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: AppSpacing.md,
                                mainAxisSpacing: AppSpacing.md,
                                childAspectRatio: 0.84,
                              ),
                              itemCount: _mockUsers.length,
                              itemBuilder: (context, index) {
                                // TODO: Replace with actual user data
                                return Container(
                                  height: 190,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: AppBorderRadius.medium,
                                  ),
                                  child: const Center(
                                    child: Text('User Card'),
                                  ),
                                );
                              },
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

