import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/shimmer_skeleton.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    this.imageUrl = mockImage,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.boxShape = BoxShape.circle,
    this.borderRadius,
    super.key,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final BoxShape boxShape;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      placeholderFadeInDuration: Duration.zero,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            shape: boxShape,
            image: DecorationImage(
              image: imageProvider,
              fit: boxFit,
            ),
          ),
        );
      },
      progressIndicatorBuilder: (context, url, progress) {
        return ShimmerSkeleton(
          height: height,
          width: width,
          borderRadius: borderRadius,
        );
      },
      errorWidget: (context, url, error) {
        return Assets.icons.circleX.svg(
          colorFilter: ColorFilter.mode(
            context.theme.primaryColorLight,
            BlendMode.srcIn,
          ),
        );
      },
    );
  }
}
