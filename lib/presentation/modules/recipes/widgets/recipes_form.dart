part of '../recipes.dart';

class RecipesForm extends StatelessWidget {
  const RecipesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesBloc, RecipesState>(
      builder: (context, state) => switch (state) {
        RecipesInitial() => const ShimmeredRecipesList(),
        RecipesLoaded() => state.recipes.isEmpty
            ? const YouHaveNoRecipes()
            : RecipesList(recipes: state.recipes),
        _ => const SizedBox.shrink(),
      },
    );
  }
}
