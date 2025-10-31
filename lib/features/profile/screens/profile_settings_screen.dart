import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _jobController = TextEditingController();
  final TextEditingController _educationController = TextEditingController();

  // Mock data
  final List<String> _photoUrls = [
    'https://picsum.photos/400/600?random=1',
    'https://picsum.photos/400/600?random=2',
    'https://picsum.photos/400/600?random=3',
  ];

  @override
  void initState() {
    super.initState();
    // TODO: Load user data from provider
    _nameController.text = 'Berkay';
    _bioController.text =
        'Sanat, müzik ve seyahati seven biriyim. Yeni insanlarla tanışmayı ve derin sohbetler yapmayı severim.';
    _jobController.text = 'Yazılım Geliştirici';
    _educationController.text = 'Üniversite';
  }

  @override
  void dispose() {
    _bioController.dispose();
    _nameController.dispose();
    _jobController.dispose();
    _educationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.surface : AppColors.surface;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Profil Ayarları',
          style: AppTypography.h2.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: AppColors.primary,
            ),
            onPressed: _saveChanges,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Photos Section
            _buildPhotosSection(context, isDark),
            const SizedBox(height: AppSpacing.xl),
            // Basic Info Section
            _buildBasicInfoSection(context, isDark),
            const SizedBox(height: AppSpacing.xl),
            // Bio Section
            _buildBioSection(context, isDark),
            const SizedBox(height: AppSpacing.xl),
            // Save Button
            AppButton(
              label: 'Değişiklikleri Kaydet',
              onPressed: _saveChanges,
              type: AppButtonType.primary,
              fullWidth: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotosSection(BuildContext context, bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fotoğraflar',
          style: AppTypography.h3.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _photoUrls.length + 1, // +1 for add button
            itemBuilder: (context, index) {
              if (index == _photoUrls.length) {
                return _buildAddPhotoButton(context, isDark);
              }
              return _buildPhotoItem(context, _photoUrls[index], index, isDark);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPhotoItem(
    BuildContext context,
    String photoUrl,
    int index,
    bool isDark,
  ) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: AppSpacing.md),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: AppBorderRadius.medium,
            child: Image.network(
              photoUrl,
              width: 150,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 150,
                height: 200,
                color: AppColors.border,
                child: const Icon(Icons.image),
              ),
            ),
          ),
          Positioned(
            top: AppSpacing.xs,
            right: AppSpacing.xs,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.error.withValues(alpha: 0.9),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  size: 18,
                  color: AppColors.textOnDark,
                ),
                onPressed: () {
                  setState(() {
                    _photoUrls.removeAt(index);
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddPhotoButton(BuildContext context, bool isDark) {
    return GestureDetector(
      onTap: () {
        // TODO: Open image picker
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: isDark ? AppDarkColors.border : AppColors.border,
          borderRadius: AppBorderRadius.medium,
          border: Border.all(
            color: isDark ? AppDarkColors.border : AppColors.border,
            width: 2,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_outline,
              size: 48,
              color: AppColors.textSecondary,
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              'Fotoğraf Ekle',
              style: AppTypography.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBasicInfoSection(BuildContext context, bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Temel Bilgiler',
          style: AppTypography.h3.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          controller: _nameController,
          label: 'İsim',
          hint: 'İsminizi girin',
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          controller: _jobController,
          label: 'Meslek',
          hint: 'Mesleğinizi girin',
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          controller: _educationController,
          label: 'Eğitim',
          hint: 'Eğitim bilginizi girin',
        ),
      ],
    );
  }

  Widget _buildBioSection(BuildContext context, bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hakkımda',
          style: AppTypography.h3.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          controller: _bioController,
          label: 'Biyografi',
          hint: 'Kendinizden bahsedin...',
          maxLines: 5,
        ),
      ],
    );
  }

  void _saveChanges() {
    // TODO: Save changes via API
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Değişiklikler kaydedildi'),
        backgroundColor: AppColors.success,
      ),
    );
    context.pop();
  }
}

