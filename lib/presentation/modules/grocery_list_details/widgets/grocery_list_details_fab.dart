part of '../grocery_list_details.dart';

class GroceryListDetailsFab extends StatelessWidget {
  const GroceryListDetailsFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        context.pushNamed(AppNamedRoutes.addItems);
      },
      label: Text(AppTranslations.addItems.addItems),
      icon: Assets.svg.icPlus.svg(
        color: AppColors.white,
      ),
    );
  }
}
