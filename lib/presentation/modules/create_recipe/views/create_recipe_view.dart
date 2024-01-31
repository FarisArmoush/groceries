import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/create_recipe/widgets/add_items_to_recipe_button.dart';
import 'package:groceries/presentation/modules/create_recipe/widgets/add_steps_to_recipe_list.dart';
import 'package:groceries/presentation/modules/create_recipe/widgets/create_recipe_button.dart';
import 'package:groceries/presentation/modules/create_recipe/widgets/create_recipe_image.dart';
import 'package:groceries/presentation/modules/create_recipe/widgets/create_recipe_name_text_field.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

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
            padding: AppPaddings.scaffold(context),
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
