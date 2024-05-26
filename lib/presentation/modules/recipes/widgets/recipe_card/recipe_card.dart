import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/recipe/recipe_entity.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card_image.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card_title.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    required this.recipeModel,
    required this.onTap,
    super.key,
  });

  final void Function() onTap;
  final RecipeEntity recipeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeCardTitle(name: recipeModel.name ?? ''),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        RecipeCardImage(
          recipeModel: recipeModel,
          onTap: onTap,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
      ],
    );
  }
}
