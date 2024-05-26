import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/recipe_details/recipe_details_entity.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';

class RecipeItemsList extends StatelessWidget {
  const RecipeItemsList({
    required this.recipeModel,
    super.key,
  });

  final RecipeDetailsEntity? recipeModel;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Column(
        children: ListTile.divideTiles(
          context: context,
          color: Colors.transparent,
          tiles: recipeModel?.items?.map(
                (item) => Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 4),
                  child: ListTile(
                    title: Text(item.name ?? ''),
                    subtitle: Text(item.notes ?? ''),
                    leading: Assets.icons.archive.svg(
                      colorFilter: ColorFilter.mode(
                        context.theme.primaryColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ) ??
              [],
        ).toList(),
      ),
    );
  }
}
