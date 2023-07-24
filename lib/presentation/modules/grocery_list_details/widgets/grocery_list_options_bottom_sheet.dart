import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_bottom_sheet_header.dart';
import 'package:groceries/presentation/widgets/buttons/bottom_sheet_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class GroceryListOptionsBottomSheet extends StatelessWidget {
  const GroceryListOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      showDragHandle: false,
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 32,
          ),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            const GroceryListOptionsBottomSheetHeader(),
            BottomSheetButton(
              text: AppTranslations.sendListAsText,
              iconPath: Assets.svg.icSend.path,
              onTap: () {},
            ),
            BottomSheetButton(
              text: AppTranslations.printList,
              iconPath: Assets.svg.icPrinter.path,
              onTap: () {},
            ),
            BottomSheetButton(
              text: AppTranslations.listSettings,
              iconPath: Assets.svg.icSettings.path,
              onTap: () => context
                ..pop()
                ..pushNamed(
                  AppNamedRoutes.goceryListSettings,
                ),
            ),
          ],
        );
      },
    );
  }
}
