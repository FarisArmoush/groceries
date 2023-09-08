part of '../recipes.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.recipes.recipes),
        leading: const SizedBox.shrink(),
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(AppNamedRoutes.createRecipe),
            icon: Assets.svg.icPlusCircle.svg(
              color: context.theme.primaryColorLight,
            ),
          ),
        ],
      ),
      body: const RecipesForm(),
    );
  }
}
