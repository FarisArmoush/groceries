part of '../recipes.dart';

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
      padding: AppPaddings.scaffoldPadding(context),
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return RecipeCard(
          recipeModel: RecipeModel(
            id: recipe.id,
            name: recipe.name,
            imageUrl: recipe.imageUrl,
            items: recipe.items,
            creationDate: recipe.creationDate,
          ),
          onTap: () => context.pushNamed(
            AppNamedRoutes.recipeDetails,
            extra: recipe,
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: context.deviceHeight * 0.04,
      ),
    );
  }
}
