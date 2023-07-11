import 'package:flutter/material.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card_actions_row.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    required this.recipeModel,
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          recipeModel.name,
          style: TextStyle(
            fontFamily: AppFonts.semiBold(context),
            color: context.theme.primaryColor,
            fontSize: 32,
          ),
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        InkWell(
          onTap: onTap,
          child: CachedImage(
            imageUrl: recipeModel.imageUrl,
            height: context.deviceHeight * 0.2,
            width: double.infinity,
            boxShape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        const RecipeCardActionsRow(),
      ],
    );
  }
}
