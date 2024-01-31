import 'package:flutter/material.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_details_list_header.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_items_list.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_options_bottom_sheet.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_steps_list.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({
    required this.recipeModel,
    super.key,
  });

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          GroceriesAppBar(
            middle: Text(recipeModel.name ?? ''),
            largeTitle: Text(recipeModel.name ?? ''),
            trailing: IconButton(
              onPressed: () => showModalBottomSheet<void>(
                context: context,
                elevation: 0,
                showDragHandle: true,
                builder: (context) => const RecipeOptionsBottomSheet(),
              ),
              icon: Assets.svg.icVerticalThreeDots.svg(
                colorFilter: ColorFilter.mode(
                  context.theme.hintColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: AppPaddings.scaffold(context),
            sliver: SliverList.list(
              children: [
                CachedImage(
                  imageUrl: recipeModel.imageUrl ?? '',
                  height: context.deviceHeight * 0.3,
                  width: context.deviceWidth,
                  boxShape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                ),
                SizedBox(
                  height: context.deviceHeight * 0.05,
                ),
                const RecipeDetailsListHeader('Ingredients'),
                SizedBox(
                  height: context.deviceHeight * 0.02,
                ),
                RecipeItemsList(recipeModel: recipeModel),
                Divider(
                  height: context.deviceHeight * 0.075,
                ),
                const RecipeDetailsListHeader('Instructions'),
                SizedBox(
                  height: context.deviceHeight * 0.02,
                ),
                const RecipeStepsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
