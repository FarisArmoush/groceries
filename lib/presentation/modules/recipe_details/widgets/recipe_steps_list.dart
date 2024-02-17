import 'package:flutter/material.dart';
import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class RecipeStepsList extends StatelessWidget {
  const RecipeStepsList({required this.recipeModel, super.key});

  final RecipeDetailsModel? recipeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        recipeModel?.steps?.length ?? 0,
        (index) => RecipeStep(
          stepNumber: index,
          // step: 'Put the thing in the thing\n' * (index + 1),
          step: recipeModel?.steps?[index] ?? '',
        ),
      ),
    );
  }
}

class RecipeStep extends StatelessWidget {
  const RecipeStep({
    required this.stepNumber,
    required this.step,
    super.key,
  });

  final int stepNumber;
  final String step;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: context.deviceWidth * 0.075,
          padding: const EdgeInsetsDirectional.all(4),
          decoration: BoxDecoration(
            color: context.theme.primaryColorLight,
            shape: BoxShape.circle,
          ),
          child: Text(
            (stepNumber + 1).toString(),
            style: const TextStyle(
              fontWeight: AppFontWeights.regular,
              fontSize: 16,
              color: AppColors.white,
            ),
          ).centered(),
        ),
        SizedBox(
          width: context.deviceWidth * 0.04,
        ),
        Flexible(
          child: Text(
            step,
            style: TextStyle(
              fontSize: 14,
              color: context.theme.primaryColor,
              fontFamily: AppFonts.semiBold(context),
            ),
          ),
        ),
      ],
    ).symmetricPadding(vertical: 16);
  }
}
