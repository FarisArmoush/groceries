import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/grocery_list_details/grocery_list_details_entity.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/clear_grocery_list_items_bottom_sheet.dart';

class ClearGroceryListItemsButton extends StatelessWidget {
  const ClearGroceryListItemsButton({
    required this.listModel,
    super.key,
  });

  final GroceryListDetailsEntity? listModel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        elevation: 0,
        showDragHandle: true,
        builder: (context) => ClearGroceryListItemsBottomSheet(
          listModel: listModel,
        ),
      ),
      icon: Assets.icons.eraser.svg(
        colorFilter: ColorFilter.mode(
          context.theme.primaryColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
