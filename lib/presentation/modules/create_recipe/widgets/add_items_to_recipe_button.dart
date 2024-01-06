part of '../create_recipe.dart';

class AddItemsToRecipeButton extends StatelessWidget {
  const AddItemsToRecipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
      icon: Assets.svg.icPlus.svg(
        colorFilter: ColorFilter.mode(
          context.theme.colorScheme.secondary,
          BlendMode.srcIn,
        ),
      ),
      label: Text(AppTranslations.createRecipe.addItemsToRecipe),
    );
  }
}
