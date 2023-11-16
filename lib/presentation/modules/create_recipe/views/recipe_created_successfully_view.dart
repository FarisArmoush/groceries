part of '../create_recipe.dart';

class RecipeCreatedSuccessfullyView extends StatelessWidget {
  const RecipeCreatedSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.15,
            ),
            Assets.svg.illCelebrating.svg(
              height: context.deviceHeight * 0.35,
            ),
            Text(
              'Yay!!',
              style: TextStyle(
                fontFamily: AppFonts.semiBold(context),
                color: context.theme.primaryColor,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            Text(
              'Recipe was created Successfully!',
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
                color: context.theme.hintColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            OutlinedButton(
              onPressed: () =>
                  context.pushReplacementNamed(AppNamedRoutes.root),
              child: Text(
                AppTranslations.createGroceryList.goHome,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
