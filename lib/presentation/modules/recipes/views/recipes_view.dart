import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipes_app_bar.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipes_list.dart';
import 'package:groceries/presentation/modules/recipes/widgets/shimmered_recipes_list.dart';
import 'package:groceries/presentation/modules/recipes/widgets/you_have_no_recipes.dart';
import 'package:groceries/presentation/widgets/error_state.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          context.read<RecipesBloc>().add(const RecipesEvent.loadMyRecipes());
        },
        child: CustomScrollView(
          slivers: [
            const RecipesAppBar(),
            BlocBuilder<RecipesBloc, RecipesState>(
              builder: (context, state) => state.status.when(
                initial: SizedBox.shrink,
                loading: () => const ShimmeredRecipesList(),
                failure: (error) => ErrorState(title: Text(error)),
                success: () => state.recipes.isEmpty
                    ? const YouHaveNoRecipes()
                    : RecipesList(recipes: state.recipes),
              ),
            ).asSliver(),
          ],
        ),
      ),
    );
  }
}
