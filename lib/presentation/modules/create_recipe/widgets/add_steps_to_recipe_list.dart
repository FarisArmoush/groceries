import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/create_recipe/widgets/recipe_step_text_field.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class AddStepsToRecipeList extends StatefulWidget {
  const AddStepsToRecipeList({super.key});

  @override
  State<AddStepsToRecipeList> createState() => _AddStepsToRecipeListState();
}

class _AddStepsToRecipeListState extends State<AddStepsToRecipeList> {
  List<RecipeStepTextField> steps = [
    const RecipeStepTextField(),
  ];

  void addStep() => setState(() => steps.add(const RecipeStepTextField()));

  void removeStep(int index) => setState(() => steps.removeAt(index));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: steps.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 4,
                  child: steps[index],
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () => index != 0 ? removeStep(index) : null,
                    icon: Assets.svg.icCircleX.svg(
                      colorFilter: ColorFilter.mode(
                        index != 0
                            ? context.theme.primaryColorLight
                            : context.theme.hintColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        TextButton.icon(
          onPressed: addStep,
          icon: Assets.svg.icPlusCircle.svg(
            colorFilter: ColorFilter.mode(
              context.theme.primaryColorLight,
              BlendMode.srcIn,
            ),
          ),
          label: Text(AppTranslations.createRecipe.addStep),
        ),
      ],
    );
  }
}
