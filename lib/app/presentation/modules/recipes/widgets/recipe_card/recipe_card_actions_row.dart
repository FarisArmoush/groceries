import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/recipes/widgets/add_recipe_to_list_bottom_sheet.dart';
import 'package:groceries/app/presentation/modules/recipes/widgets/delete_recipe_dialog.dart';
import 'package:groceries/app/presentation/modules/recipes/widgets/recipe_card/recipe_card_action_button.dart';
import 'package:groceries/app/presentation/widgets/constant_widgets/app_snack_bars.dart';
import 'package:groceries/gen/assets.gen.dart';

class RecipeCardActionsRow extends StatelessWidget {
  const RecipeCardActionsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RecipeCardActionButton(
          label: 'Add to List',
          icon: Assets.svg.icPlus,
          onPressed: () => showModalBottomSheet<AddRecipeToListBottomSheet>(
            context: context,
            builder: (context) => const AddRecipeToListBottomSheet(),
          ),
        ),
        RecipeCardActionButton(
          label: 'Archive',
          icon: Assets.svg.icArchive,
          onPressed: () => AppSnackBars.successSnackBar(
            context,
            'Archived Successfully',
          ),
        ),
        RecipeCardActionButton(
          label: 'Delete',
          icon: Assets.svg.icTrash,
          onPressed: () => showDialog<DeleteRecipeDialog>(
            context: context,
            builder: (context) => const DeleteRecipeDialog(),
          ),
        ),
      ],
    );
  }
}
