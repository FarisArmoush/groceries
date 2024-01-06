part of '../../home.dart';

class GroceryListsRailHeader extends StatelessWidget {
  const GroceryListsRailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RailTitle(title: AppTranslations.home.myLists),
        TextButton.icon(
          label: Text(AppTranslations.createGroceryList.createNewList),
          onPressed: () => context.pushNamed(AppNamedRoutes.createList),
          icon: Assets.svg.icPlusCircle.svg(
            colorFilter: ColorFilter.mode(
              context.theme.primaryColorLight,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
