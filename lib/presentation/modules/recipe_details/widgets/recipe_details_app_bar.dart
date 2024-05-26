import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/recipe_details/recipe_details_entity.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_options_bottom_sheet.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';

class RecipeDetailsAppBar extends StatelessWidget {
  const RecipeDetailsAppBar({
    required this.recipeModel,
    super.key,
  });

  final RecipeDetailsEntity? recipeModel;

  @override
  Widget build(BuildContext context) {
    return GroceriesAppBar(
      middle: Text(recipeModel?.name ?? ''),
      largeTitle: Text(recipeModel?.name ?? ''),
      trailing: IconButton(
        onPressed: () => showModalBottomSheet<void>(
          context: context,
          elevation: 0,
          showDragHandle: true,
          builder: (context) => const RecipeOptionsBottomSheet(),
        ),
        icon: Assets.icons.menu.svg(
          colorFilter: ColorFilter.mode(
            context.theme.hintColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
