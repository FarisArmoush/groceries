import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_list_details_model/grocery_list_details_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListOptionsButton extends StatelessWidget {
  const GroceryListOptionsButton({
    required this.listModel,
    super.key,
  });

  final GroceryListDetailsModel? listModel;

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
