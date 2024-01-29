import 'package:flutter/material.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipeItemsList extends StatelessWidget {
  const RecipeItemsList({
    required this.recipeModel,
    super.key,
  });

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      itemCount: recipeModel.items?.length ?? 0,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(recipeModel.items?[index]?.name ?? ''),
          subtitle: Text(recipeModel.items?[index]?.notes ?? ''),
          leading: Assets.svg.icArchive.svg(
            colorFilter: ColorFilter.mode(
              context.theme.primaryColor,
              BlendMode.srcIn,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: context.deviceHeight * 0.01);
      },
    );
  }
}
