part of '../create_recipe.dart';

class CreateRecipeForm extends StatelessWidget {
  const CreateRecipeForm({super.key});
  static const _horizontalPadding = 24.0;
  static const _placeHolderImage =
      'https://static.photocdn.pt/images/articles/2018/12/05/articles/2017_8/beginner_photography_mistakes-1.webp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Recipe'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const AppTextField(
            labelText: 'Recipe Name',
          ).symmetricPadding(
            horizontal: _horizontalPadding,
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const CachedImageWithEditButton(
            imageUrl: _placeHolderImage,
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
          // ignore: dead_code
          if (false) ...[
            const CategoryBox(category: 'Meats'),
            const CategoryBox(category: 'Meats'),
            const CategoryBox(category: 'Meats'),
            // ignore: dead_code
          ] else ...[
            ElevatedButton.icon(
              onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
              icon: Assets.svg.icPlus.svg(
                color: context.theme.colorScheme.secondary,
              ),
              label: const Text('Add items to recipe'),
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
          onPressed: () {
            context.pushReplacementNamed(
              AppNamedRoutes.recipeCreatedUnsuccessfully,
            );
          },
          child: const Text('Create Recipe'),
        ),
      ],
    );
  }
}
