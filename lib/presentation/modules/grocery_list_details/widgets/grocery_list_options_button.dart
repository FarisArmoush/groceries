import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

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
