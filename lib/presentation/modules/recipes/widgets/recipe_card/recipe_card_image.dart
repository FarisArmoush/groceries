import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/recipe/recipe_entity.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipeCardImage extends StatelessWidget {
  const RecipeCardImage({
    required this.recipeModel,
    required this.onTap,
    super.key,
  });

  final RecipeEntity recipeModel;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CachedImage(
        imageUrl: recipeModel.imageUrl ?? '',
        height: context.deviceHeight * 0.2,
        width: double.infinity,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
