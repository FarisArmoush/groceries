part of 'widgets.dart';

class CachedImageWithEditButton extends StatelessWidget {
  const CachedImageWithEditButton({
    required this.imageUrl,
    this.width,
    this.height,
    this.boxShape,
    this.borderRadius,
    this.onPressed,
    super.key,
  });

  final double? width;
  final double? height;
  final BoxShape? boxShape;
  final BorderRadiusGeometry? borderRadius;
  final VoidCallback? onPressed;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CachedImage(
          height: width ?? context.deviceHeight * 0.3,
          width: height ?? double.infinity,
          boxShape: boxShape ?? BoxShape.rectangle,
          borderRadius: borderRadius ?? BorderRadius.circular(16),
          imageUrl: imageUrl,
        ),
        CircleAvatar(
          backgroundColor: AppColors.black.withOpacity(0.8),
          child: IconButton(
            onPressed: onPressed ??
                () => showModalBottomSheet<Placeholder>(
                      context: context,
                      elevation: 0,
                      showDragHandle: true,
                      builder: (context) => const Placeholder(),
                    ),
            icon: Assets.svg.icEdit.svg(
              color: AppColors.white,
            ),
          ),
        ).allPadding(8),
      ],
    );
  }
}