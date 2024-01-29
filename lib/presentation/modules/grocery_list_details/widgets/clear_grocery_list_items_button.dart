import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/clear_grocery_list_items_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ClearGroceryListItemsButton extends StatelessWidget {
  const ClearGroceryListItemsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        elevation: 0,
        showDragHandle: true,
        builder: (context) => const ClearGroceryListItemsBottomSheet(),
      ),
      icon: Assets.svg.icEraser.svg(
        colorFilter: ColorFilter.mode(
          context.theme.primaryColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
