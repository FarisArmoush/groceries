part of '../create_recipe.dart';

class RecipeCreatedUnsuccessfullyView extends StatelessWidget {
  const RecipeCreatedUnsuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.1,
            ),
            Assets.svg.illError.svg(),
            Text(
              'oops...',
              style: TextStyle(
                fontFamily: AppFonts.semiBold(context),
                color: context.theme.primaryColorLight,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            Text(
              'Something went wrong, try again later.',
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
                color: context.theme.hintColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            FilledButton(
              onPressed: () => context.pushReplacementNamed(
                AppNamedRoutes.root,
              ),
              child: Text(AppTranslations.createGroceryList.goHome),
            ),
            OutlinedButton(
              onPressed: () => context.pushReplacementNamed(
                AppNamedRoutes.createRecipe,
              ),
              child: Text(AppTranslations.createGroceryList.tryAgain),
            ),
          ],
        ),
      ),
    );
  }
}
