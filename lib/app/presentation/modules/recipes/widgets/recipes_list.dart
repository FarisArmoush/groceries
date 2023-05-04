import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/data/models/recipe_model.dart';
import 'package:groceries/app/presentation/modules/recipes/widgets/recipe_card/recipe_card.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({
    required this.recipes,
    Key? key,
  }) : super(key: key);
  final List<RecipeModel> recipes;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          height: size.height * 0.04,
        );
      },
    );
  }
}
