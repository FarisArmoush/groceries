part of '../grocery_list_details.dart';

class GroceryListOptionsButton extends StatelessWidget {
  const GroceryListOptionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: AppTranslations.listOptions,
      icon: Assets.svg.icVerticalThreeDots.svg(
        color: context.theme.primaryColor,
      ),
      onPressed: () => showModalBottomSheet<GroceryListOptionsBottomSheet>(
        showDragHandle: true,
        elevation: 0,
        context: context,
        builder: (context) => const GroceryListOptionsBottomSheet(),
      ),
    );
  }
}
