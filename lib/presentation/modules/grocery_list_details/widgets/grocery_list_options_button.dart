import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/grocery_list_details/grocery_list_details_entity.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_bottom_sheet.dart';

class GroceryListOptionsButton extends StatelessWidget {
  const GroceryListOptionsButton({
    required this.listModel,
    super.key,
  });

  final GroceryListDetailsEntity? listModel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: Translations.groceryLists.listOptions,
      icon: Assets.icons.menu.svg(
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
