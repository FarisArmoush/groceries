import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

/// A widget that displays a cached network image.
///
/// * The [imageUrl] parameter specifies the URL of the image to display.
///
/// * The [height] parameter specifies the height of the image widget.
///
/// * The [width] parameter specifies the width of the image widget.
///
/// * The [boxFit] parameter specifies how the image
///   should be fit within the widget's bounds.
///
/// * The [boxShape] parameter specifies the shape
///   of the container that holds the image.
///
/// * The [borderRadius] parameter specifies the border radius of the container.
class CachedImage extends StatelessWidget {
  const CachedImage({
    required this.imageUrl,
    this.height,
    this.width,
    this.boxFit,
    this.boxShape,
    this.borderRadius,
    super.key,
  });

  /// The URL of the image to display.
  final String? imageUrl;

  /// The height of the image widget.
  final double? height;

  /// The width of the image widget.
  final double? width;

  /// How the image should be fit within the widget's bounds.
  final BoxFit? boxFit;

  /// The shape of the container that holds the image.
  final BoxShape? boxShape;

  /// The border radius of the container.
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
