import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../core/constants/app_routes.dart';
import '../../../shared/widgets/app_bottom_sheet.dart';

/// Matches Screen
/// Shows matched users with tabs for Shipped, Liked, and Messages
class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Mock data
  final List<Map<String, dynamic>> _shippedMatches = [
    {
      'id': '1',
      'name': 'Ecem',
      'age': 24,
      'job': 'Moda Tasarımcısı',
      'photoUrl': 'https://placehold.co/160x234',
      'matchPercentage': 80,
    },
    {
      'id': '2',
      'name': 'Melis',
      'age': 24,
      'job': 'İç Mimar',
      'photoUrl': 'https://placehold.co/160x234',
      'matchPercentage': 60,
    },
  ];

  final List<Map<String, dynamic>> _likedMatches = [
    {
      'id': '3',
      'name': 'Sinem',
      'age': 32,
      'job': 'Mimar',
      'photoUrl': 'https://placehold.co/160x234',
      'isNew': true,
    },
    {
      'id': '4',
      'name': 'Açelya',
      'age': 28,
      'job': 'Mimar',
      'photoUrl': 'https://placehold.co/160x234',
    },
  ];

  final List<Map<String, dynamic>> _conversations = [
    {
      'id': '1',
      'name': 'Ecem',
      'lastMessage': 'Bugün kahve içmeye ne dersin?',
      'timestamp': '10 dakika önce',
      'unreadCount': 1,
      'isOnline': true,
      'photoUrl': 'https://placehold.co/53x75',
    },
    {
      'id': '2',
      'name': 'Açelya',
      'lastMessage': 'Nasılsın?',
      'timestamp': '1 saat önce',
      'unreadCount': 1,
      'isOnline': true,
      'photoUrl': 'https://placehold.co/41x59',
    },
    {
      'id': '3',
      'name': 'Sinem',
      'lastMessage': 'Ne zaman geleceksin?',
      'timestamp': '1 saat önce',
      'unreadCount': 0,
      'statusIcon': 'star', // Golden star for premium
      'photoUrl': 'https://placehold.co/41x51',
    },
    {
      'id': '4',
      'name': 'Melis',
      'lastMessage': 'Piştt oralarda mısın?',
      'timestamp': '1 gün önce',
      'unreadCount': 0,
      'photoUrl': 'https://placehold.co/48x70',
    },
    {
      'id': '5',
      'name': 'Kübra',
      'lastMessage': 'Şuan müsait değilim',
      'timestamp': '1 gün önce',
      'unreadCount': 0,
      'photoUrl': 'https://placehold.co/41x60',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppDarkColors.background : AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Eşleşmeler',
          style: AppTypography.h1.copyWith(
            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
          ),
        ),
      ),
      body: Column(
        children: [
          // Tab bar
          _buildTabBar(),
          
          // Tab content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildShippedTab(),
                _buildLikedTab(),
                _buildMessagesTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.screenMargin),
      decoration: BoxDecoration(
        color: const Color(0x198390A1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(100),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: const Color(0xFF8390A1),
        labelStyle: AppTypography.caption.copyWith(
          fontWeight: AppTypography.medium,
        ),
        unselectedLabelStyle: AppTypography.caption.copyWith(
          fontWeight: AppTypography.medium,
        ),
        tabs: [
          Tab(text: "Shipp'lediklerin"),
          Tab(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Beğendiklerin'),
                if (_likedMatches.any((match) => match['isNew'] == true))
                  Container(
                    width: 4,
                    height: 4,
                    margin: const EdgeInsets.only(left: 4),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Mesajlar'),
                const SizedBox(width: 5),
                Container(
                  width: 14,
                  height: 14,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${_conversations.where((c) => c['unreadCount'] > 0).length}',
                      style: AppTypography.caption.copyWith(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: AppTypography.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShippedTab() {
    if (_shippedMatches.isEmpty) {
      return const Center(child: Text('Henüz bir eşleşme yok'));
    }

    return GridView.builder(
      padding: const EdgeInsets.all(AppSpacing.screenMargin),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.84,
      ),
      itemCount: _shippedMatches.length,
      itemBuilder: (context, index) {
        final match = _shippedMatches[index];
        return _buildMatchCard(match);
      },
    );
  }

  Widget _buildLikedTab() {
    if (_likedMatches.isEmpty) {
      return const Center(child: Text('Henüz beğeni yok'));
    }

    return GridView.builder(
      padding: const EdgeInsets.all(AppSpacing.screenMargin),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.84,
      ),
      itemCount: _likedMatches.length,
      itemBuilder: (context, index) {
        final match = _likedMatches[index];
        return _buildMatchCard(match);
      },
    );
  }

  Widget _buildMessagesTab() {
    return Column(
      children: [
        // Search bar
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSpacing.screenMargin, vertical: 12),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFEEF1F3),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Kullanıcı ara',
                  style: AppTypography.caption.copyWith(
                    color: const Color(0xFF8390A1).withValues(alpha: 0.5),
                  ),
                ),
              ),
              Icon(Icons.search, color: const Color(0xFF8390A1), size: 16),
            ],
          ),
        ),
        
        // Conversations list
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: _conversations.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final conversation = _conversations[index];
              return _buildConversationItem(conversation);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMatchCard(Map<String, dynamic> match) {
    final photoUrl = match['photoUrl'] as String;
    final hasMatchPercentage = match.containsKey('matchPercentage');

    return GestureDetector(
      onTap: () {
        context.push('${AppRoutes.profileDetail}?userId=${match['id']}');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppBorderRadius.medium,
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            // User image
            Positioned.fill(
              child: Image.network(
                photoUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: AppColors.border,
                  child: Icon(Icons.person, color: AppColors.textSecondary, size: 32),
                ),
              ),
            ),

            // Gradient overlay
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
                    colors: [Colors.transparent, Colors.black.withValues(alpha: 0.7)],
                  ),
                ),
              ),
            ),

            // User info
            Positioned(
              left: 10,
              bottom: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${match['name']}, ${match['age']}',
                    style: AppTypography.bodyMedium.copyWith(
                      color: Colors.white,
                      fontWeight: AppTypography.medium,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (match['job'] != null)
                    Text(
                      match['job'] as String,
                      style: AppTypography.caption.copyWith(
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),

            // Match badge or new indicator
            if (hasMatchPercentage)
              Positioned(
                left: 4,
                top: 4,
                child: _buildMatchBadge(match['matchPercentage'] as int),
              )
            else if (match['isNew'] == true)
              Positioned(
                right: 4,
                top: 4,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.star, color: Colors.yellow, size: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMatchBadge(int percentage) {
    return GestureDetector(
      onTap: () => _showCompatibilityModal(percentage),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: const Color(0x19FFC94D),
          border: Border.all(color: const Color(0xFFFFC94D), width: 1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Astrolojik Uyumluluk',
              style: AppTypography.bodyMedium.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 6),
            _buildCircularProgress(percentage),
          ],
        ),
      ),
    );
  }

  void _showCompatibilityModal(int percentage) {
    AppBottomSheet.show(
      context: context,
      height: MediaQuery.of(context).size.height * 0.75,
      child: _buildCompatibilityContent(percentage),
    );
  }

  Widget _buildCompatibilityContent(int percentage) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header with percentage
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(
                        value: percentage / 100,
                        strokeWidth: 4,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white.withValues(alpha: 0.1)),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(
                        value: percentage / 100,
                        strokeWidth: 4,
                        valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFFC94D)),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Center(
                      child: Text(
                        '$percentage%',
                        style: AppTypography.bodyLarge.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          
          // Title
          Text(
            'ASTROLOJİK UYUMLULUK',
            textAlign: TextAlign.center,
            style: AppTypography.bodyMedium.copyWith(
              fontWeight: AppTypography.medium,
            ),
          ),
          
          const SizedBox(height: 32),
          
          // Compatibility items
          _buildCompatibilityItem(
            'Venüs –120– Mars',
            'Olumlu Açı',
            'Güçlü bir çekim ve doğal bir flört enerjisi getirir.',
            Colors.green,
            Icons.check_circle,
          ),
          
          Divider(height: 20),
          
          _buildCompatibilityItem(
            'Güneş–90-Ay',
            'Olumsuz Açı',
            'İlişkilerde biri yakınlık ve güven ararken, diğeri bireysellik ve kontrol peşinde olabilir. Bu durum dengeyi zorlaştırabilir.',
            const Color(0xFFFF3366),
            Icons.cancel,
          ),
          
          Divider(height: 20),
          
          _buildCompatibilityItem(
            'Ay kavuşum Neptün',
            'Nötr Açı',
            'Ruhsal bağlantılar güçlüdür; ancak gerçeklikten kopmamaya dikkat etmek gerekir.',
            AppColors.textSecondary.withValues(alpha: 0.5),
            Icons.circle_outlined,
          ),
          
          const Spacer(),
          
          // Action button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF3366),
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              child: Text(
                'Keşfetmeye Devam Et',
                style: AppTypography.bodyMedium.copyWith(
                  color: Colors.white,
                  fontWeight: AppTypography.medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompatibilityItem(
    String title,
    String label,
    String description,
    Color labelColor,
    IconData icon,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: labelColor, size: 20),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: AppTypography.caption.copyWith(
                  color: labelColor,
                  fontWeight: AppTypography.medium,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: AppTypography.bodyMedium.copyWith(
                  fontWeight: AppTypography.medium,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCircularProgress(int percentage) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(
              value: percentage / 100,
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white.withValues(alpha: 0.1)),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(
              value: percentage / 100,
              strokeWidth: 3,
              valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFFC94D)),
              backgroundColor: Colors.transparent,
            ),
          ),
          Center(
            child: Text(
              '$percentage%',
              style: AppTypography.bodyMedium.copyWith(
                color: Colors.white,
                fontWeight: AppTypography.medium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConversationItem(Map<String, dynamic> conversation) {
    final unreadCount = conversation['unreadCount'] as int;
    final isOnline = conversation['isOnline'] == true;

    return InkWell(
      onTap: () {
        context.push('${AppRoutes.chat}?userId=${conversation['id']}&userName=${conversation['name']}');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            // Avatar with online status
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    conversation['photoUrl'] as String,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 40,
                      height: 40,
                      color: AppColors.border,
                      child: Icon(Icons.person, color: AppColors.textSecondary, size: 20),
                    ),
                  ),
                ),
                if (isOnline)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4CE416),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                    ),
                  )
                else if (conversation.containsKey('statusIcon') && conversation['statusIcon'] == 'star')
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2C94C),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(width: 10),

            // Message info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    conversation['name'] as String,
                    style: AppTypography.bodyMedium.copyWith(
                      fontWeight: AppTypography.medium,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    conversation['lastMessage'] as String,
                    style: AppTypography.caption,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            const SizedBox(width: 21),

            // Timestamp and unread count
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  conversation['timestamp'] as String,
                  style: AppTypography.caption.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                if (unreadCount > 0) ...[
                  const SizedBox(height: 10),
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.19),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '$unreadCount',
                        style: AppTypography.caption.copyWith(
                          color: AppColors.primary,
                          fontSize: 10,
                          fontWeight: AppTypography.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}