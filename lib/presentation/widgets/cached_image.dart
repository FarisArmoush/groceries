part of 'widgets.dart';

/// {@template cached_image}
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
/// {@endtemplate}
class CachedImage extends StatelessWidget {
  /// {@macro cached_image}
  const CachedImage({
    this.imageUrl = _initialImage,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.boxShape = BoxShape.circle,
    this.borderRadius,
    super.key,
  });
  static const _initialImage =
      'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80';

  /// The URL of the image to display.
  final String imageUrl;

  /// The height of the image widget.
  final double? height;

  /// The width of the image widget.
  final double? width;

  /// How the image should be fit within the widget's bounds.
  ///
  /// @Defaults to [BoxFit.cover]
  final BoxFit boxFit;

  /// The shape of the container that holds the image.
  ///
  /// @Defaults to [BoxShape.circle]
  final BoxShape boxShape;

  /// The border radius of the container.
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
        return const AppLoadingIndicator();
      },
      errorWidget: (context, url, error) {
        return Assets.svg.icCircleX.svg(
          color: context.theme.primaryColorLight,
        );
      },
    );
  }
}
