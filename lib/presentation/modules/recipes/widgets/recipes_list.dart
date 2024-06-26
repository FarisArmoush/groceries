import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/domain/entities/recipe/recipe_entity.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card.dart';
import 'package:groceries/presentation/router/app_route.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({
    required this.recipes,
    super.key,
  });
  final List<RecipeEntity> recipes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      itemCount: recipes.length,
      padding: AppPaddings.scaffold(context),
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return RecipeCard(
          recipeModel: recipe,
          onTap: () => context.pushNamed(
            AppRoute.recipeDetails.named,
            extra: recipe.id,
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: context.deviceHeight * 0.04,
      ),
    );
  }
}
