part of '../grocery_list_details.dart';

class GroceryListOptionsButton extends StatelessWidget {
  const GroceryListOptionsButton({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: AppTranslations.groceryLists.listOptions,
      icon: Assets.svg.icVerticalThreeDots.svg(
        colorFilter: ColorFilter.mode(
          context.theme.primaryColor,
          BlendMode.srcIn,
        ),
      ),
      onPressed: () => showModalBottomSheet<void>(
        showDragHandle: true,
        elevation: 0,
        context: context,
        builder: (context) => GroceryListOptionsBottomSheet(
          listModel: listModel,
        ),
      ),
    );
  }
}
