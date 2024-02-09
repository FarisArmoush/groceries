import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/grocery_list_details_model/grocery_list_details_model.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/widgets/bottom_sheet_button.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListOptionsBottomSheet extends StatelessWidget {
  const GroceryListOptionsBottomSheet({
    required this.listModel,
    super.key,
  });

  final GroceryListDetailsModel? listModel;

  @override
  Widget build(BuildContext context) {
    final itemsIsEmpty = listModel?.items?.isNotEmpty ?? false;
    return BottomSheet(
      showDragHandle: false,
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return ListView(
          padding: AppPaddings.bottomSheet(context),
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppTranslations.groceryLists.listOptions,
                  style: TextStyle(
                    fontFamily: AppFonts.regular(context),
                    color: context.theme.primaryColor,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  child: Text(
                    AppTranslations.general.close,
                  ),
                  onPressed: () => context.pop(),
                ),
              ],
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            Visibility(
              visible: itemsIsEmpty,
              child: BottomSheetButton(
                text: AppTranslations.groceryLists.sendListAsText,
                iconPath: Assets.icons.send.path,
                onTap: () {},
              ),
            ),
            Visibility(
              visible: itemsIsEmpty,
              child: BottomSheetButton(
                text: AppTranslations.groceryLists.printList,
                iconPath: Assets.icons.printer.path,
                onTap: () {},
              ),
            ),
            BottomSheetButton(
              text: AppTranslations.groceryListSettings.listSettings,
              iconPath: Assets.icons.gear.path,
              onTap: () => context
                ..pop()
                ..pushNamed(
                  AppNamedRoutes.groceryListSettings,
                ),
            ),
          ],
        );
      },
    );
  }
}
