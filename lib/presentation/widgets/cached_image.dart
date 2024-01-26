part of 'widgets.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    this.imageUrl = mockImage,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.boxShape = BoxShape.circle,
    this.borderRadius,
    this.progressIndicatorBuilder,
    super.key,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final BoxShape boxShape;
  final BorderRadiusGeometry? borderRadius;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;

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
      progressIndicatorBuilder: progressIndicatorBuilder ??
          (context, url, progress) {
            return ShimmerSkeleton(
              height: height,
              width: width,
              borderRadius: borderRadius,
            );
          },
      errorWidget: (context, url, error) {
        return Assets.svg.icCircleX.svg(
          colorFilter: ColorFilter.mode(
            context.theme.primaryColorLight,
            BlendMode.srcIn,
          ),
        );
      },
    );
  }
}
