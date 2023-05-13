import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    required this.imageUrl,
    this.height,
    this.width,
    this.boxFit,
    this.boxShape,
    this.borderRadius,
    Key? key,
  }) : super(key: key);

  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  final BoxShape? boxShape;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl ??
          'https://icons.veryicon.com/png/o/internet--web/prejudice/user-128.png',
      placeholderFadeInDuration: Duration.zero,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            shape: boxShape ?? BoxShape.circle,
            image: DecorationImage(
              image: imageProvider,
              fit: boxFit ?? BoxFit.cover,
            ),
          ),
        );
      },
      progressIndicatorBuilder: (context, url, progress) {
        return const AppLoadingIndicator();
      },
      errorWidget: (context, url, error) {
        return Assets.svg.icCircleX.svg(
          color: Theme.of(context).primaryColorLight,
        );
      },
    );
  }
}
