import 'package:flutter/material.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipeCardImage extends StatelessWidget {
  const RecipeCardImage({
    required this.recipeModel,
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: CachedImage(
          imageUrl: recipeModel.imageUrl ?? '',
          height: context.deviceHeight * 0.2,
          width: double.infinity,
          boxShape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
