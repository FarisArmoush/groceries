import 'package:flutter/material.dart';
import 'package:groceries/data/models/recipe_model.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipe_card/recipe_card_actions_row.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    required this.recipeModel,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          recipeModel.name,
          style: AppTextStyles.poppinsSemiBold(
            color: Theme.of(context).primaryColor,
            fontSize: 32,
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        InkWell(
          onTap: onTap,
          child: CachedImage(
            imageUrl: recipeModel.imageUrl,
            height: size.height * 0.2,
            width: double.infinity,
            boxShape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        const RecipeCardActionsRow(),
      ],
    );
  }
}
