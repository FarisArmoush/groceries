import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/recipe_model.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({
    required this.recipes,
    super.key,
  });
  final List<RecipeModel> recipes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        return RecipeCard(
          recipeModel: RecipeModel(
            id: recipes[index].id,
            name: recipes[index].name,
            imageUrl: recipes[index].imageUrl,
            items: recipes[index].items,
          ),
          onTap: () => context.pushNamed(AppNamedRoutes.recipe),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: context.deviceHeight * 0.04,
        );
      },
    );
  }
}
