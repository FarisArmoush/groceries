import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/recipe_details/recipe_details_entity.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class RecipeStepsList extends StatelessWidget {
  const RecipeStepsList({
    required this.recipeModel,
    super.key,
  });

  final RecipeDetailsEntity? recipeModel;

  @override
  Widget build(BuildContext context) {
    final steps = recipeModel?.steps;
    return Column(
      children: List.generate(
        steps?.length ?? 0,
        (index) => RecipeStep(
          stepNumber: index + 1,
          step: steps?[index] ?? '',
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
        CircleAvatar(
          backgroundColor: context.theme.primaryColorLight,
          child: Text(
            '$stepNumber',
            style: const TextStyle(
              fontWeight: AppFontWeights.regular,
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
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
              fontWeight: AppFontWeights.semiBold,
            ),
          ),
        ),
      ],
    ).symmetricPadding(vertical: 16);
  }
}
