part of '../create_recipe.dart';

class CreateRecipeNameTextField extends StatelessWidget {
  const CreateRecipeNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: AppTranslations.createRecipe.recipeName,
    );
  }
}
