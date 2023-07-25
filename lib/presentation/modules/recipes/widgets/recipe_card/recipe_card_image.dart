import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class RecipeCardImage extends StatelessWidget {
  const RecipeCardImage({
    required this.imageUrl,
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CachedImage(
        imageUrl: imageUrl,
        height: context.deviceHeight * 0.2,
        width: double.infinity,
        boxShape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
