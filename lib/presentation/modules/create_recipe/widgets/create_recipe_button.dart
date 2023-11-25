part of '../create_recipe.dart';

class CreateRecipeButton extends StatelessWidget {
  const CreateRecipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => context.pushReplacementNamed(
        AppNamedRoutes.recipeCreatedUnsuccessfully,
      ),
      child: Text(AppTranslations.createRecipe.createRecipe),
    ).bottomButtonSpacing();
  }
}
