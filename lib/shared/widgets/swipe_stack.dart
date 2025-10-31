import 'package:flutter/material.dart';
import '../../data/models/user_model.dart';
import '../../data/models/astrology_model.dart';
import '../../data/models/match_model.dart';
import '../../design/tokens/app_colors.dart';
import 'swipeable_card.dart';

/// Swipe Stack Widget
/// Manages a stack of swipeable cards for discovery feed
class SwipeStack extends StatefulWidget {
  final List<UserModel> users;
  final Map<String, AstrologyProfileModel>? astrologyProfiles;
  final Map<String, ZodiacSignModel>? sunSigns;
  final Map<String, double>? compatibilityScores;
  final Map<String, double>? distances;
  final Function(String userId, SwipeType action)? onSwipe;
  final VoidCallback? onStackEmpty;
  final VoidCallback? onCardTap;

  const SwipeStack({
    super.key,
    required this.users,
    this.astrologyProfiles,
    this.sunSigns,
    this.compatibilityScores,
    this.distances,
    this.onSwipe,
    this.onStackEmpty,
    this.onCardTap,
  });

  @override
  State<SwipeStack> createState() => _SwipeStackState();
}

class _SwipeStackState extends State<SwipeStack> {
  final List<UserModel> _remainingUsers = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _remainingUsers.addAll(widget.users);
  }

  @override
  void didUpdateWidget(SwipeStack oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.users != oldWidget.users) {
      _remainingUsers.clear();
      _remainingUsers.addAll(widget.users);
      _currentIndex = 0;
    }
  }

  void _handleSwipeLeft(UserModel user) {
    _removeCurrentCard();
    widget.onSwipe?.call(user.id, SwipeType.dislike);
    _checkStackEmpty();
  }

  void _handleSwipeRight(UserModel user) {
    _removeCurrentCard();
    widget.onSwipe?.call(user.id, SwipeType.like);
    _checkStackEmpty();
  }

  void _handleSwipeUp(UserModel user) {
    _removeCurrentCard();
    widget.onSwipe?.call(user.id, SwipeType.superLike);
    _checkStackEmpty();
  }

  void _removeCurrentCard() {
    if (_remainingUsers.isNotEmpty && _currentIndex < _remainingUsers.length) {
      setState(() {
        _remainingUsers.removeAt(_currentIndex);
        if (_currentIndex >= _remainingUsers.length && _remainingUsers.isNotEmpty) {
          _currentIndex = 0;
        }
      });
    }
  }

  void _checkStackEmpty() {
    if (_remainingUsers.isEmpty) {
      widget.onStackEmpty?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_remainingUsers.isEmpty) {
      return _buildEmptyState();
    }

    // Display up to 3 cards in the stack (current + 2 behind)
    final visibleCards = _remainingUsers
        .skip(_currentIndex)
        .take(3)
        .toList()
        .reversed
        .toList();

    return SizedBox(
      height: 600, // Fixed height for swipe cards
      child: Stack(
        alignment: Alignment.center,
        children: visibleCards.asMap().entries.map((entry) {
          final index = entry.key;
          final user = entry.value;
          final isTop = index == visibleCards.length - 1;

          return Positioned(
            top: index * 8.0, // Slight offset for stack effect
            left: index * 4.0,
            right: -index * 4.0,
            child: Transform.scale(
              scale: 1.0 - (index * 0.03), // Slight scale down for depth
              child: Opacity(
                opacity: 1.0 - (index * 0.2), // Slight fade for depth
                child: isTop
                    ? SwipeableCard(
                        user: user,
                        astrologyProfile: widget.astrologyProfiles?[user.id],
                        sunSign: widget.sunSigns?[user.id],
                        compatibilityScore: widget.compatibilityScores?[user.id],
                        distanceInKm: widget.distances?[user.id],
                        onSwipeLeft: () => _handleSwipeLeft(user),
                        onSwipeRight: () => _handleSwipeRight(user),
                        onSwipeUp: () => _handleSwipeUp(user),
                        onTap: widget.onCardTap,
                      )
                    : SwipeableCard(
                        user: user,
                        astrologyProfile: widget.astrologyProfiles?[user.id],
                        sunSign: widget.sunSigns?[user.id],
                        compatibilityScore: widget.compatibilityScores?[user.id],
                        distanceInKm: widget.distances?[user.id],
                        onTap: widget.onCardTap,
                      ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildEmptyState() {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? AppDarkColors.textSecondary : AppColors.textSecondary;

    return Container(
      height: 600,
      decoration: BoxDecoration(
        color: isDark ? AppDarkColors.surface : AppColors.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 64,
              color: textColor,
            ),
            const SizedBox(height: 16),
            Text(
              'No more profiles',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Check back later for new matches',
              style: TextStyle(
                fontSize: 14,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

