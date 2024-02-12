import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipes_list.dart';
import 'package:groceries/presentation/modules/recipes/widgets/shimmered_recipes_list.dart';
import 'package:groceries/presentation/modules/recipes/widgets/you_have_no_recipes.dart';
import 'package:groceries/presentation/widgets/error_state.dart';

class RecipesViewBody extends StatelessWidget {
  const RecipesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesBloc, RecipesState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) => state.status.when(
        initial: SizedBox.shrink,
        loading: () => const ShimmeredRecipesList(),
        failure: (error) => ErrorState(title: Text(error)),
        success: () => state.recipes.isEmpty
            ? const YouHaveNoRecipes()
            : RecipesList(recipes: state.recipes),
      ),
    );
  }
}
