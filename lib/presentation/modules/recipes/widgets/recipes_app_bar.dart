part of '../recipes.dart';

class RecipesAppBar extends StatelessWidget {
  const RecipesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GroceriesAppBar(
      automaticallyImplyLeading: false,
      middle: Text(AppTranslations.recipes.recipes),
      largeTitle: Text(AppTranslations.recipes.recipes),
      trailing: IconButton(
        onPressed: () => context.pushNamed(AppNamedRoutes.createRecipe),
        icon: Assets.svg.icPlusCircle.svg(
          colorFilter: ColorFilter.mode(
            context.theme.primaryColorLight,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
