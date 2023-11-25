part of '../create_recipe.dart';

class AddItemsToRecipeButton extends StatelessWidget {
  const AddItemsToRecipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
      icon: Assets.svg.icPlus.svg(
        color: context.theme.colorScheme.secondary,
      ),
      label: Text(AppTranslations.createRecipe.addItemsToRecipe),
    );
  }
}
