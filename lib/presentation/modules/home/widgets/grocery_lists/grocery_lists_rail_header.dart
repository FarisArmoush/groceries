part of '../../home.dart';

class GroceryListsRailHeader extends StatelessWidget {
  const GroceryListsRailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LeftFadeInAnimation(
          child: RailTitle(title: AppTranslations.myLists),
        ),
        RightFadeInAnimation(
          child: TextButton.icon(
            label: Text(AppTranslations.createNewList),
            onPressed: () => context.pushNamed(AppNamedRoutes.createList),
            icon: Assets.svg.icPlusCircle.svg(
              color: context.theme.primaryColorLight,
            ),
          ),
        ),
      ],
    );
  }
}
