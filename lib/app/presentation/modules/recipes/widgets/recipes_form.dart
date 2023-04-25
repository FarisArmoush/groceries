import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/app/presentation/modules/recipes/widgets/recipes_list.dart';
import 'package:groceries/app/presentation/modules/recipes/widgets/you_have_no_recipes.dart';
import 'package:groceries/app/presentation/widgets/app_loading_indicator.dart';

class RecipesForm extends StatelessWidget {
  const RecipesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesBloc, RecipesState>(
      builder: (context, state) {
        if (state is RecipesInitial) {
          return const AppLoadingIndicator();
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
