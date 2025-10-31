import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../data/models/user_model.dart';
import '../../data/models/astrology_model.dart';
import 'profile_card.dart';

/// Swipeable Card Widget
/// Makes a ProfileCard swipeable with gesture detection
class SwipeableCard extends StatefulWidget {
  final UserModel user;
  final AstrologyProfileModel? astrologyProfile;
  final ZodiacSignModel? sunSign;
  final double? compatibilityScore;
  final double? distanceInKm;
  final VoidCallback? onSwipeLeft;
  final VoidCallback? onSwipeRight;
  final VoidCallback? onSwipeUp;
  final VoidCallback? onTap;

  const SwipeableCard({
    super.key,
    required this.user,
    this.astrologyProfile,
    this.sunSign,
    this.compatibilityScore,
    this.distanceInKm,
    this.onSwipeLeft,
    this.onSwipeRight,
    this.onSwipeUp,
    this.onTap,
  });

  @override
  State<SwipeableCard> createState() => _SwipeableCardState();
}

class _SwipeableCardState extends State<SwipeableCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  Offset _dragOffset = Offset.zero;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPanStart(DragStartDetails details) {
    if (_isAnimating) return;
  }

  void _onPanUpdate(DragUpdateDetails details) {
    if (_isAnimating) return;

    setState(() {
      _dragOffset += details.delta;
    });
  }

  void _onPanEnd(DragEndDetails details) {
    if (_isAnimating) return;

    const swipeThreshold = 100.0;
    final dx = _dragOffset.dx;
    final dy = _dragOffset.dy;
    final velocity = details.velocity.pixelsPerSecond;

    // Determine swipe direction
    if (dx.abs() > swipeThreshold || velocity.dx.abs() > 500) {
      if (dx > 0) {
        // Swipe right (like)
        _swipeRight();
      } else {
        // Swipe left (dislike)
        _swipeLeft();
      }
    } else if (dy < -swipeThreshold || velocity.dy < -500) {
      // Swipe up (super like)
      _swipeUp();
    } else {
      // Snap back to center
      _resetPosition();
    }
  }

  void _swipeLeft() {
    _isAnimating = true;
    _controller.forward().then((_) {
      widget.onSwipeLeft?.call();
    });
  }

  void _swipeRight() {
    _isAnimating = true;
    _controller.forward().then((_) {
      widget.onSwipeRight?.call();
    });
  }

  void _swipeUp() {
    _isAnimating = true;
    // Custom animation for swipe up
    _controller.forward().then((_) {
      widget.onSwipeUp?.call();
    });
  }

  void _resetPosition() {
    setState(() {
      _dragOffset = Offset.zero;
    });
  }

  double _getRotation() {
    if (_isAnimating) return 0.0;
    return (_dragOffset.dx / MediaQuery.of(context).size.width) * 0.2;
  }

  double _getOpacity() {
    if (_isAnimating) return 1.0;
    final dx = _dragOffset.dx.abs();
    final threshold = MediaQuery.of(context).size.width * 0.3;
    if (dx > threshold) {
      return 1.0 - ((dx - threshold) / (MediaQuery.of(context).size.width - threshold)) * 0.5;
    }
    return 1.0;
  }

  Color? _getSwipeOverlayColor() {
    if (_isAnimating) return null;
    
    final dx = _dragOffset.dx;
    final threshold = 50.0;

    if (dx > threshold) {
      // Swipe right - green (like)
      return AppColors.success.withOpacity(0.3);
    } else if (dx < -threshold) {
      // Swipe left - red (dislike)
      return AppColors.error.withOpacity(0.3);
    }
    
    final dy = _dragOffset.dy;
    if (dy < -threshold) {
      // Swipe up - blue (super like)
      return AppColors.info.withOpacity(0.3);
    }

    return null;
  }

  String? _getSwipeLabel() {
    if (_isAnimating) return null;
    
    final dx = _dragOffset.dx;
    final threshold = 50.0;

    if (dx > threshold) {
      return 'LIKE';
    } else if (dx < -threshold) {
      return 'NOPE';
    }
    
    final dy = _dragOffset.dy;
    if (dy < -threshold) {
      return 'SUPER LIKE';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final transform = Matrix4.identity()
      ..translate(_dragOffset.dx, _dragOffset.dy)
      ..rotateZ(_getRotation())
      ..scale(_isAnimating ? _scaleAnimation.value : 1.0);

    final overlayColor = _getSwipeOverlayColor();
    final swipeLabel = _getSwipeLabel();

    return GestureDetector(
      onPanStart: _onPanStart,
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: Transform(
        transform: transform,
        alignment: Alignment.center,
        child: Opacity(
          opacity: _getOpacity(),
          child: Stack(
            children: [
              ProfileCard(
                user: widget.user,
                astrologyProfile: widget.astrologyProfile,
                sunSign: widget.sunSign,
                compatibilityScore: widget.compatibilityScore,
                distanceInKm: widget.distanceInKm,
                onTap: widget.onTap,
              ),
              if (overlayColor != null)
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: overlayColor,
                      borderRadius: AppBorderRadius.large,
                    ),
                    child: swipeLabel != null
                        ? Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: AppBorderRadius.medium,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                              child: Text(
                                swipeLabel,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          )
                        : null,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

