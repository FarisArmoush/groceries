part of '../recipes.dart';

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
          physics: const BouncingScrollPhysics(),
          slivers: [
            GroceriesAppBar(
              automaticallyImplyLeading: false,
              title: AppTranslations.recipes.recipes,
              trailing: IconButton(
                onPressed: () => context.pushNamed(AppNamedRoutes.createRecipe),
                icon: Assets.svg.icPlusCircle.svg(
                  color: context.theme.primaryColorLight,
                ),
              ),
            ),
            BlocBuilder<RecipesBloc, RecipesState>(
              builder: (context, state) => state.status.when(
                initial: SizedBox.shrink,
                loading: () => const ShimmeredRecipesList(),
                failure: (error) => Center(child: Text(error)),
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
