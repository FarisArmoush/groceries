part of '../create_recipe.dart';

class CreateRecipeView extends StatelessWidget {
  const CreateRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          GroceriesAppBar(
            largeTitle: Text(AppTranslations.createRecipe.createRecipe),
            middle: Text(AppTranslations.createRecipe.createRecipe),
          ),
          SliverPadding(
            padding: AppPaddings.scaffoldPadding(context),
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
                const AddItemsToRecipeButton(),
                SizedBox(
                  height: context.deviceHeight * 0.025,
                ),
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: const [
        CreateRecipeButton(),
      ],
    );
  }
}
