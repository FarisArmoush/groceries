part of '../recipes.dart';

class RecipesForm extends StatelessWidget {
  const RecipesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesBloc, RecipesState>(
      builder: (context, state) => state.status.when(
        initial: SizedBox.shrink,
        loading: () => const ShimmeredRecipesList(),
        failure: (error) => Center(child: Text(error)),
        success: () => state.recipes.isEmpty
            ? const YouHaveNoRecipes()
            : RecipesList(recipes: state.recipes),
      ),
    );
  }
}
