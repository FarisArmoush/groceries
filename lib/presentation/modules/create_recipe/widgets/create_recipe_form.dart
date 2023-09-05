// ignore_for_file: dead_code

part of '../create_recipe.dart';

class CreateRecipeForm extends StatelessWidget {
  const CreateRecipeForm({super.key});
  static const _horizontalPadding = 24.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.createRecipe.createRecipe),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          AppTextField(
            labelText: AppTranslations.createRecipe.recipeName,
          ).symmetricPadding(
            horizontal: _horizontalPadding,
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          CachedImageWithEditButton(
            imageUrl: mockImage,
            onPressed: () => showModalBottomSheet<UploadImageBottomSheet>(
              context: context,
              elevation: 0,
              showDragHandle: true,
              builder: (context) => UploadImageBottomSheet(
                onTakePhoto: () {},
                onUploadPhoto: () {},
              ),
            ),
          ).symmetricPadding(
            horizontal: _horizontalPadding,
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const AddStepsToRecipeList().symmetricPadding(
            horizontal: _horizontalPadding,
          ),
          SizedBox(
            height: context.deviceHeight * 0.025,
          ),
          if (false) ...[
            const CategoryBox(category: 'Meats'),
            const CategoryBox(category: 'Meats'),
            const CategoryBox(category: 'Meats'),
          ] else ...[
            ElevatedButton.icon(
              onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
              icon: Assets.svg.icPlus.svg(
                color: context.theme.colorScheme.secondary,
              ),
              label: Text(AppTranslations.createRecipe.addItemsToRecipe),
            ).symmetricPadding(
              horizontal: _horizontalPadding,
            ),
          ],
          SizedBox(
            height: context.deviceHeight * 0.025,
          ),
        ],
      ),
      persistentFooterButtons: [
        TextButton(
          onPressed: () => context.pushReplacementNamed(
            AppNamedRoutes.recipeCreatedUnsuccessfully,
          ),
          child: Text(AppTranslations.createRecipe.createRecipe),
        ),
      ],
    );
  }
}
