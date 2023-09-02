part of '../recipes.dart';

class RecipesForm extends StatelessWidget {
  const RecipesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesBloc, RecipesState>(
      builder: (context, state) {
        if (state is RecipesInitial) {
          return const ShimmeredRecipesList();
        }
        if (state is RecipesLoaded && state.recipes.isEmpty) {
          return const YouHaveNoRecipes();
        } else if (state is RecipesLoaded) {
          return RecipesList(recipes: state.recipes);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
