part of 'widgets.dart';

class ShimmerSkeleton extends StatelessWidget {
  const ShimmerSkeleton({
    this.height = 0,
    this.width = 0,
    this.borderRadius,
    super.key,
  });

  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.isDarkMode
          ? Colors.white.withOpacity(0.6)
          : Colors.grey.shade300,
      highlightColor: context.isDarkMode
          ? Colors.white.withOpacity(0.4)
          : Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: borderRadius ?? BorderRadius.circular(4),
        ),
      ),
    );
  }
}

class BackgroundShimmerSkeleton extends StatelessWidget {
  const BackgroundShimmerSkeleton({
    required this.height,
    required this.width,
    this.borderRadius,
    super.key,
  });

  final double height;
  final double width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.isDarkMode
          ? Colors.white.withOpacity(0.6)
          : Colors.grey.shade300,
      highlightColor: context.isDarkMode
          ? Colors.white.withOpacity(0.4)
          : Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: borderRadius ?? BorderRadius.circular(4),
        ),
      ),
    );
  }
}
