// ignore_for_file: dead_code

part of '../create_recipe.dart';

class CreateRecipePage extends StatelessWidget {
  const CreateRecipePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          GroceriesAppBar(
            title: AppTranslations.createRecipe.createRecipe,
          ),
          SliverPadding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 12,
            ),
            sliver: SliverList.list(
              children: [
                const CreateRecipeNameTextField(),
                SizedBox(
                  height: context.deviceHeight * 0.02,
                ),
                const CreateRecipeImage(),
                SizedBox(
                  height: context.deviceHeight * 0.02,
                ),
                const AddStepsToRecipeList(),
                SizedBox(
                  height: context.deviceHeight * 0.025,
                ),
                const CreateRecipeButton(),
                SizedBox(
                  height: context.deviceHeight * 0.025,
                ),
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        FilledButton(
          onPressed: () => context.pushReplacementNamed(
            AppNamedRoutes.recipeCreatedUnsuccessfully,
          ),
          child: Text(AppTranslations.createRecipe.createRecipe),
        ),
      ],
    );
  }
}
