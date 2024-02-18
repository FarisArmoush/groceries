import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class CachedImageWithEditButton extends StatelessWidget {
  const CachedImageWithEditButton({
    this.imageUrl,
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
  final String? imageUrl;

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
          imageUrl: imageUrl ?? faker.image.image(),
        ),
        CircleAvatar(
          backgroundColor: AppColors.black.withOpacity(0.8),
          child: IconButton(
            onPressed: onPressed ??
                () => showModalBottomSheet<void>(
                      context: context,
                      elevation: 0,
                      showDragHandle: true,
                      builder: (context) => const Placeholder(),
                    ),
            icon: Assets.icons.edit.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ).allPadding(8),
      ],
    );
  }
}
