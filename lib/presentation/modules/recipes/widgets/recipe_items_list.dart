import 'package:flutter/material.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

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
      physics: const BouncingScrollPhysics(),
      primary: false,
      itemCount: recipeModel.items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(recipeModel.items[index].name),
          subtitle: Text(recipeModel.items[index].notes),
          leading: Assets.svg.icArchive.svg(
            color: context.theme.primaryColor,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: context.deviceHeight * 0.01);
      },
    );
  }
}
