part of '../grocery_list_details.dart';

class GroceryListDetailsFab extends StatelessWidget {
  const GroceryListDetailsFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: FloatingActionButton.extended(
        onPressed: () {
          context.pushNamed(AppNamedRoutes.addItems);
        },
        label: const Text('Add Items'),
        icon: Assets.svg.icPlus.svg(
          color: AppColors.white,
        ),
      ),
    );
  }
}
