import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_typography.dart';

class TermsAndPrivacyScreen extends StatefulWidget {
  const TermsAndPrivacyScreen({super.key});

  @override
  State<TermsAndPrivacyScreen> createState() => _TermsAndPrivacyScreenState();
}

class _TermsAndPrivacyScreenState extends State<TermsAndPrivacyScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.surface : AppColors.surface;

    // Check for tab parameter from route
    final routeData = GoRouterState.of(context).uri.queryParameters;
    final tabParam = routeData['tab'];
    if (tabParam == 'privacy' && _selectedTabIndex != 1) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _tabController.animateTo(1);
      });
    }

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
          'Şartlar ve Gizlilik',
          style: AppTypography.h2.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            decoration: BoxDecoration(
              color: isDark ? AppDarkColors.surface : AppColors.surface,
              border: Border(
                bottom: BorderSide(
                  color: isDark ? AppDarkColors.border : AppColors.border,
                  width: 1,
                ),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              indicatorColor: AppColors.primary,
              labelColor: AppColors.primary,
              unselectedLabelColor: isDark
                  ? AppColors.textSecondary
                  : AppColors.textSecondary,
              labelStyle: AppTypography.bodyMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: AppTypography.bodyMedium,
              tabs: const [
                Tab(text: 'Kullanım Şartları'),
                Tab(text: 'Gizlilik Politikası'),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildTermsTab(context, isDark),
          _buildPrivacyTab(context, isDark),
        ],
      ),
    );
  }

  Widget _buildTermsTab(BuildContext context, bool isDark) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.screenMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kullanım Şartları',
            style: AppTypography.h2.copyWith(
              color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Son Güncelleme: 1 Ocak 2024',
            style: AppTypography.caption.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          _buildSection(
            context,
            '1. Genel Bilgiler',
            '''
Shipp uygulamasına hoş geldiniz. Bu kullanım şartları, Shipp uygulamasını ("Uygulama") kullanımınızı düzenler. Uygulamayı kullanarak bu şartları kabul etmiş sayılırsınız.
''',
            isDark,
          ),
          const SizedBox(height: AppSpacing.xl),
          _buildSection(
            context,
            '2. Hesap Oluşturma',
            '''
Uygulamayı kullanmak için bir hesap oluşturmanız gerekmektedir. Hesap oluştururken doğru ve güncel bilgiler sağlamalısınız. Hesabınızın güvenliğinden siz sorumlusunuz.
''',
            isDark,
          ),
          const SizedBox(height: AppSpacing.xl),
          _buildSection(
            context,
            '3. Kullanıcı Davranışı',
            '''
Uygulamayı yasalara uygun şekilde kullanmalısınız. Diğer kullanıcılara zarar verecek, rahatsız edici veya uygunsuz içerik paylaşamazsınız.
''',
            isDark,
          ),
          const SizedBox(height: AppSpacing.xl),
          _buildSection(
            context,
            '4. Fikri Mülkiyet',
            '''
Uygulamanın tüm içeriği Shipp\'e aittir. İçeriği izinsiz kopyalayamaz, dağıtamaz veya kullanamazsınız.
''',
            isDark,
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyTab(BuildContext context, bool isDark) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.screenMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gizlilik Politikası',
            style: AppTypography.h2.copyWith(
              color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Son Güncelleme: 1 Ocak 2024',
            style: AppTypography.caption.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          _buildSection(
            context,
            '1. Toplanan Bilgiler',
            '''
Uygulama kullanımı sırasında şu bilgiler toplanmaktadır:
- Profil bilgileri (isim, yaş, fotoğraflar)
- Konum bilgileri
- Mesajlaşma içeriği
- Uygulama kullanım verileri
''',
            isDark,
          ),
          const SizedBox(height: AppSpacing.xl),
          _buildSection(
            context,
            '2. Bilgilerin Kullanımı',
            '''
Toplanan bilgiler şu amaçlarla kullanılır:
- Hizmetlerimizi sunmak ve geliştirmek
- Eşleşmeleri sağlamak
- Güvenlik ve yasal uyumluluğu sağlamak
''',
            isDark,
          ),
          const SizedBox(height: AppSpacing.xl),
          _buildSection(
            context,
            '3. Bilgi Paylaşımı',
            '''
Kişisel bilgileriniz, yasal zorunluluklar dışında üçüncü taraflarla paylaşılmaz. Eşleşmeler ve mesajlaşma özellikleri için gerekli minimum bilgi paylaşılır.
''',
            isDark,
          ),
          const SizedBox(height: AppSpacing.xl),
          _buildSection(
            context,
            '4. Veri Güvenliği',
            '''
Bilgilerinizin güvenliği için endüstri standardı şifreleme ve güvenlik önlemleri kullanılmaktadır.
''',
            isDark,
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    String content,
    bool isDark,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.h3.copyWith(
            color: isDark ? AppColors.textOnDark : AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          content,
          style: AppTypography.bodyMedium.copyWith(
            color: isDark ? AppColors.textSecondary : AppColors.textSecondary,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

