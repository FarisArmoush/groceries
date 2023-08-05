part of '../recipes.dart';

class YouHaveNoRecipes extends StatelessWidget {
  const YouHaveNoRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 250.milliseconds,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: context.deviceHeight * 0.35,
            child: Assets.svg.illEating.svg(),
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          Text(
            AppTranslations.emptyRecipesHeader,
            style: TextStyle(
              fontFamily: AppFonts.semiBold(context),
              color: context.theme.primaryColor,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          Text(
            AppTranslations.emptyRecipesBody,
            style: TextStyle(
              fontFamily: AppFonts.light(context),
              color: context.theme.hintColor,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          FilledButton(
            onPressed: () {},
            child: Text(AppTranslations.createFirstRecipe),
          ),
        ],
      ),
    );
  }
}
