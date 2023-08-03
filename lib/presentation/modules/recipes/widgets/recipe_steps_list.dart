part of '../recipes.dart';

class RecipeStepsList extends StatelessWidget {
  const RecipeStepsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => RecipeStep(
          stepNumber: index,
          step: 'Put the thing in the thing $index',
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
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: context.theme.primaryColorLight,
            shape: BoxShape.circle,
          ),
          child: Text(
            (stepNumber + 1).toString(),
            style: TextStyle(
              fontFamily: AppFonts.regular(context),
              fontSize: 16,
              color: context.theme.primaryColor,
            ),
          ).centered(),
        ),
        SizedBox(
          width: context.deviceWidth * 0.04,
        ),
        Flexible(
          child: Text(
            'Put the thing in the thing. ' * (stepNumber + 1),
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
