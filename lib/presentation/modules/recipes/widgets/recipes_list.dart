import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({
    required this.recipes,
    super.key,
  });
  final List<RecipeModel> recipes;

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
