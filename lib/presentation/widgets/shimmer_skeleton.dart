import 'package:flutter/material.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';

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
          ? AppColors.white.withOpacity(0.8)
          : Colors.grey.shade300,
      highlightColor: context.isDarkMode
          ? AppColors.white.withOpacity(0.6)
          : Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: borderRadius ?? BorderRadiusDirectional.circular(4),
        ),
      ),
    );
  }
}
