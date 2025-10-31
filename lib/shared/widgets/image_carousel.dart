import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_border_radius.dart';
import '../../design/tokens/app_spacing.dart';
import 'app_badge.dart';

/// Image Carousel Widget
/// Swipeable image carousel with indicators
class ImageCarousel extends StatefulWidget {
  final List<String> imageUrls;
  final double height;
  final bool showIndicator;
  final bool showPageNumbers;
  final VoidCallback? onImageTap;

  const ImageCarousel({
    super.key,
    required this.imageUrls,
    this.height = 400,
    this.showIndicator = true,
    this.showPageNumbers = false,
    this.onImageTap,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.imageUrls.isEmpty) {
      return _buildEmptyState();
    }

    return SizedBox(
      height: widget.height,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: widget.onImageTap,
                child: _buildImage(widget.imageUrls[index]),
              );
            },
          ),
          if (widget.showIndicator && widget.imageUrls.length > 1)
            Positioned(
              bottom: AppSpacing.md,
              left: 0,
              right: 0,
              child: _buildIndicator(),
            ),
          if (widget.showPageNumbers && widget.imageUrls.length > 1)
            Positioned(
              top: AppSpacing.md,
              right: AppSpacing.md,
              child: AppBadge.count(
                count: widget.imageUrls.length,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    return ClipRRect(
      borderRadius: AppBorderRadius.large,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        width: double.infinity,
        placeholder: (context, url) => Container(
          color: AppColors.border,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          color: AppColors.border,
          child: const Icon(Icons.error),
        ),
      ),
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.imageUrls.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index
                ? AppColors.primary
                : AppColors.border.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.border : AppColors.border;
    
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: AppBorderRadius.large,
      ),
      child: Center(
        child: Icon(
          Icons.image,
          size: 64,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}

