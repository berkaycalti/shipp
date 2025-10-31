import 'package:flutter/material.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_spacing.dart';

/// Filter Screen
/// User preferences for discovery filters
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String? _selectedGender;
  bool _isVisible = true;
  RangeValues _ageRange = const RangeValues(20, 30);
  double _distance = 5;
  List<String> _selectedZodiacs = [];
  String? _drinkingPreference;
  String? _smokingPreference;
  String? _childrenPreference;
  String? _petsPreference;

  final List<String> _zodiacSigns = [
    'Koç', 'Boğa', 'İkizler', 'Yengeç', 'Aslan', 'Başak',
    'Terazi', 'Akrep', 'Yay', 'Oğlak', 'Kova', 'Balık', 'Farketmez',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0x071C1C1E),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios,
              size: 12,
              color: AppColors.textPrimary,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Filtre',
          style: AppTypography.bodyLarge.copyWith(
            color: AppColors.textPrimary,
            fontWeight: AppTypography.medium,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: _handleSave,
            child: Text(
              'Kaydet',
              style: AppTypography.bodyLarge.copyWith(
                color: AppColors.primary,
                fontWeight: AppTypography.medium,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Who to match with
            _buildSectionTitle('Kimlerle eşleşmek istiyorsun?'),
            const SizedBox(height: AppSpacing.md),
            _buildGenderSelector(),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Visibility
            _buildSectionTitle('Görünürlük'),
            const SizedBox(height: AppSpacing.md),
            _buildVisibilityToggle(),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Age Range
            _buildSectionTitle('Yaş Aralığı'),
            const SizedBox(height: AppSpacing.md),
            _buildAgeRangeSlider(),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Distance
            _buildSectionTitle('Mesafe'),
            const SizedBox(height: AppSpacing.md),
            _buildDistanceSelector(),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Zodiac Preference
            _buildSectionTitle(
              'Burç Tercihi',
              opacity: 0.5,
            ),
            const SizedBox(height: AppSpacing.md),
            _buildZodiacSelector(),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Drinking
            _buildSectionTitle('İçki Kullanımı'),
            const SizedBox(height: AppSpacing.md),
            _buildRadioGroup(
              options: ['Evet', 'Hayır', 'Fark Etmez'],
              selected: _drinkingPreference,
              onChanged: (value) => setState(() => _drinkingPreference = value),
            ),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Smoking
            _buildSectionTitle('Sigara Kullanımı'),
            const SizedBox(height: AppSpacing.md),
            _buildRadioGroup(
              options: ['Evet', 'Hayır', 'Fark Etmez'],
              selected: _smokingPreference,
              onChanged: (value) => setState(() => _smokingPreference = value),
            ),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Children
            _buildSectionTitle('Çocuk İsteği'),
            const SizedBox(height: AppSpacing.md),
            _buildRadioGroup(
              options: ['Evet', 'Hayır', 'Fark Etmez'],
              selected: _childrenPreference,
              onChanged: (value) => setState(() => _childrenPreference = value),
            ),
            
            const SizedBox(height: AppSpacing.xl * 2),
            
            // Pets
            _buildSectionTitle('Evcil Hayvan'),
            const SizedBox(height: AppSpacing.md),
            _buildRadioGroup(
              options: ['Seviyor', 'Sevmiyor', 'Evcil Hayvana Sahip', 'Fark Etmez'],
              selected: _petsPreference,
              onChanged: (value) => setState(() => _petsPreference = value),
            ),
            
            const SizedBox(height: AppSpacing.xl * 2),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, {double opacity = 1.0}) {
    return Opacity(
      opacity: opacity,
      child: Text(
        title,
        style: AppTypography.bodyMedium.copyWith(
          color: AppColors.textPrimary,
          fontWeight: opacity < 1.0 ? AppTypography.medium : AppTypography.regular,
        ),
      ),
    );
  }

  Widget _buildGenderSelector() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0x0C8391A1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          _buildGenderOption('Erkek', _selectedGender == 'Erkek'),
          const SizedBox(height: AppSpacing.md),
          _buildGenderOption('Kadın', _selectedGender == 'Kadın'),
          const SizedBox(height: AppSpacing.md),
          _buildGenderOption('Diğer', _selectedGender == 'Diğer'),
        ],
      ),
    );
  }

  Widget _buildGenderOption(String label, bool isSelected) {
    return InkWell(
      onTap: () => setState(() => _selectedGender = label),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTypography.bodyMedium.copyWith(
                color: isSelected ? AppColors.textPrimary : AppColors.textSecondary,
              ),
            ),
          ),
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: isSelected ? AppColors.primary : AppColors.border,
              ),
            ),
            child: isSelected
                ? Center(
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }

  Widget _buildVisibilityToggle() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0x0C8391A1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Diğer kullanıcılar seni ana sayfada görebilir. Bu ayarı istediğin zaman değiştirebilirsin.',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          Switch(
            value: _isVisible,
            onChanged: (value) => setState(() => _isVisible = value),
            activeColor: AppColors.primary,
          ),
        ],
      ),
    );
  }

  Widget _buildAgeRangeSlider() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0x0C8391A1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '${_ageRange.start.toInt()} ila ${_ageRange.end.toInt()} arası',
              style: AppTypography.caption.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          RangeSlider(
            values: _ageRange,
            min: 18,
            max: 100,
            divisions: 82,
            activeColor: AppColors.primary,
            inactiveColor: Colors.white,
            onChanged: (values) => setState(() => _ageRange = values),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${_ageRange.start.toInt()}',
                style: AppTypography.caption.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                '${_ageRange.end.toInt()}',
                style: AppTypography.caption.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDistanceSelector() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0x0C8391A1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              _buildDistanceChip('1 km içerisinde', '1km'),
              const SizedBox(width: AppSpacing.sm),
              _buildDistanceChip('5-10 km', '5-10km', isSelected: true),
              const SizedBox(width: AppSpacing.sm),
              _buildDistanceChip('Farketmez', 'unlimited'),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2km',
                style: AppTypography.caption.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                '5 km',
                style: AppTypography.caption.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          Slider(
            value: _distance,
            min: 1,
            max: 50,
            divisions: 49,
            activeColor: AppColors.primary,
            inactiveColor: Colors.white,
            onChanged: (value) => setState(() => _distance = value),
          ),
        ],
      ),
    );
  }

  Widget _buildDistanceChip(String label, String value, {bool isSelected = false}) {
    return GestureDetector(
      onTap: () => setState(() {
        // TODO: Update distance preference
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : const Color(0x198390A1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          style: AppTypography.caption.copyWith(
            color: isSelected ? Colors.white : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }

  Widget _buildZodiacSelector() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0x338390A1),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Wrap(
        spacing: 8,
        runSpacing: 12,
        children: [
          ..._zodiacSigns.map((zodiac) => _buildZodiacChip(zodiac)),
        ],
      ),
    );
  }

  Widget _buildZodiacChip(String zodiac) {
    final isSelected = _selectedZodiacs.contains(zodiac);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            _selectedZodiacs.remove(zodiac);
          } else {
            if (zodiac == 'Farketmez') {
              _selectedZodiacs = ['Farketmez'];
            } else {
              _selectedZodiacs.remove('Farketmez');
              _selectedZodiacs.add(zodiac);
            }
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: const Color(0x198390A1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              zodiac,
              style: AppTypography.caption.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(width: 5),
            Icon(
              Icons.close,
              size: 14,
              color: AppColors.textSecondary.withValues(alpha: 0.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioGroup({
    required List<String> options,
    String? selected,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      children: options.map((option) {
        final isSelected = selected == option;
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0x338390A1),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: () => onChanged(option),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    option,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: isSelected
                          ? AppColors.primary
                          : const Color(0x4C8390A1),
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  void _handleSave() {
    // TODO: Save filter preferences
    Navigator.pop(context);
  }
}

