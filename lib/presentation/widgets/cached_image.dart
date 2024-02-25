import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/shimmer_skeleton.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

// TODO(FarisArmoush): rename boxFit to fit, rename boxShape to shape.
class CachedImage extends StatefulWidget {
  const CachedImage({
    this.imageUrl,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.boxShape = BoxShape.circle,
    this.borderRadius,
    super.key,
  });

  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final BoxShape boxShape;
  final BorderRadiusGeometry? borderRadius;

  @override
  State<CachedImage> createState() => _CachedImageState();
}

class _CachedImageState extends State<CachedImage> {
  @override
  void didChangeDependencies() {
    precacheImage(NetworkImage(widget.imageUrl ?? ''), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: widget.height,
      width: widget.width,
      imageUrl: widget.imageUrl ?? '',
      placeholderFadeInDuration: Duration.zero,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
            shape: widget.boxShape,
            image: DecorationImage(
              image: imageProvider,
              fit: widget.boxFit,
            ),
          ),
        );
      },
      progressIndicatorBuilder: (context, url, progress) {
        return ShimmerSkeleton(
          height: widget.height,
          width: widget.width,
          borderRadius: widget.borderRadius,
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
