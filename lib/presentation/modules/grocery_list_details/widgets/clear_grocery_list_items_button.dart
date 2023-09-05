part of '../grocery_list_details.dart';

class ClearGroceryListItemsButton extends StatelessWidget {
  const ClearGroceryListItemsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: IconButton(
        onPressed: () => showModalBottomSheet<void>(
          context: context,
          elevation: 0,
          showDragHandle: true,
          builder: (context) => const ClearGroceryListItemsBottomSheet(),
        ),
        icon: Assets.svg.icEraser.svg(
          color: context.theme.primaryColor,
        ),
      ),
    );
  }
}
