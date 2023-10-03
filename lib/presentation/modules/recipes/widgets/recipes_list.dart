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
            creationDate: DateTime.timestamp(),
          ),
          onTap: () => context.pushNamed(
            AppNamedRoutes.recipeDetails,
            extra: recipes[index],
          ),
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
