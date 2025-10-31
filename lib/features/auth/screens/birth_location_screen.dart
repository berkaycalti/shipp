import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../core/constants/app_routes.dart';

/// Birth Location Screen
/// Step 6 in account creation flow
class BirthLocationScreen extends StatefulWidget {
  const BirthLocationScreen({super.key});

  @override
  State<BirthLocationScreen> createState() => _BirthLocationScreenState();
}

class _BirthLocationScreenState extends State<BirthLocationScreen> {
  bool _useAutoLocation = false;
  String? _selectedCity;
  String? _selectedDistrict;
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _neighborhoodController = TextEditingController();
  
  // Progress: Step 6 out of 10 (approximately 60% = 274px / 327px)
  final double _progress = 274 / 327;

  // Mock data - will be replaced with actual location data
  final List<String> _cities = ['İstanbul', 'Ankara', 'İzmir', 'Bursa', 'Antalya'];
  final Map<String, List<String>> _districts = {
    'İstanbul': ['Kadıköy', 'Beşiktaş', 'Şişli', 'Beyoğlu'],
    'Ankara': ['Çankaya', 'Keçiören', 'Yenimahalle'],
    'İzmir': ['Konak', 'Karşıyaka', 'Bornova'],
    'Bursa': ['Osmangazi', 'Nilüfer', 'Yıldırım'],
    'Antalya': ['Muratpaşa', 'Kepez', 'Konyaaltı'],
  };

  @override
  void dispose() {
    _streetController.dispose();
    _neighborhoodController.dispose();
    super.dispose();
  }

  void _handleNext() {
    if (_useAutoLocation || _selectedCity != null) {
      // TODO: Save birth location to account creation state
      context.push(AppRoutes.createAccountPhysicalAttributes);
    }
  }

  void _handleAutoLocation() {
    setState(() {
      _useAutoLocation = !_useAutoLocation;
      if (_useAutoLocation) {
        // TODO: Get current location
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.background : AppColors.background;

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
                          'Konumunu Belirt',
                          style: AppTypography.h3.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: AppTypography.medium,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Yakınındaki insanlarla tanışman için lokasyonunu bilmemiz gerekiyor.',
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
            
            // Form
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Column(
                  children: [
                    // Auto location toggle
                    GestureDetector(
                      onTap: _handleAutoLocation,
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                        decoration: BoxDecoration(
                          color: isDark ? AppDarkColors.surface : AppColors.surface,
                          border: Border.all(
                            color: isDark ? AppDarkColors.border : AppColors.border,
                            width: 1,
                          ),
                          borderRadius: AppBorderRadius.medium,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                            ),
                            const SizedBox(width: AppSpacing.sm),
                            Text(
                              'Otomatik Olarak İşaretle',
                              style: AppTypography.bodyMedium.copyWith(
                                color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    if (!_useAutoLocation) ...[
                      // City dropdown
                      _buildDropdown(
                        label: 'Şehir',
                        value: _selectedCity,
                        items: _cities,
                        onChanged: (value) {
                          setState(() {
                            _selectedCity = value;
                            _selectedDistrict = null;
                          });
                        },
                        isDark: isDark,
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      // District dropdown
                      if (_selectedCity != null)
                        _buildDropdown(
                          label: 'İlçe',
                          value: _selectedDistrict,
                          items: _districts[_selectedCity] ?? [],
                          onChanged: (value) {
                            setState(() {
                              _selectedDistrict = value;
                            });
                          },
                          isDark: isDark,
                        ),
                      const SizedBox(height: AppSpacing.sm),
                      // Street (optional)
                      AppTextField(
                        controller: _streetController,
                        hint: 'Cadde (Opsiyonel)',
                        label: null,
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      // Neighborhood (optional)
                      AppTextField(
                        controller: _neighborhoodController,
                        hint: 'Mahalle (Opsiyonel)',
                        label: null,
                      ),
                    ],
                  ],
                ),
              ),
            ),
            
            // Bottom button
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: AppButton(
                label: 'İlerle',
                onPressed: (_useAutoLocation || _selectedCity != null) ? _handleNext : null,
                fullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required String label,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
    required bool isDark,
  }) {
    return Container(
      width: double.infinity,
      height: 47,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      decoration: BoxDecoration(
        color: isDark ? AppDarkColors.surface : AppColors.surface,
        border: Border.all(
          color: isDark ? AppDarkColors.border : AppColors.border,
          width: 1,
        ),
        borderRadius: AppBorderRadius.medium,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(
            label,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary.withValues(alpha: 0.5),
            ),
          ),
          isExpanded: true,
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: AppTypography.bodyMedium.copyWith(
                  color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                ),
              ),
            );
          }).toList(),
          onChanged: onChanged,
          icon: Icon(
            Icons.arrow_drop_down,
            color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}

