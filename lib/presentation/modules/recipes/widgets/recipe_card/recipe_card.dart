import 'package:flutter/material.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card_image.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card_title.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    required this.recipeModel,
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeCardTitle(name: recipeModel.name),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        RecipeCardImage(
          imageUrl: recipeModel.imageUrl,
          onTap: onTap,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
      ],
    );
  }
}
