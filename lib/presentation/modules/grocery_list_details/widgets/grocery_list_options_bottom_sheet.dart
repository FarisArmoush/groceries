import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/domain/entities/grocery_list_details/grocery_list_details_entity.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/widgets/bottom_sheet_button.dart';
import 'package:groceries_theme/app_theme.dart';

class GroceryListOptionsBottomSheet extends StatelessWidget {
  const GroceryListOptionsBottomSheet({
    required this.listModel,
    super.key,
  });

  final GroceryListDetailsEntity? listModel;

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
                  Translations.groceryLists.listOptions,
                  style: TextStyle(
                    fontWeight: AppFontWeights.regular,
                    color: context.theme.primaryColor,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  child: Text(
                    Translations.general.close,
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
                text: Translations.groceryLists.sendListAsText,
                iconPath: Assets.icons.send.path,
                onTap: () {},
              ),
            ),
            Visibility(
              visible: itemsIsEmpty,
              child: BottomSheetButton(
                text: Translations.groceryLists.printList,
                iconPath: Assets.icons.printer.path,
                onTap: () {},
              ),
            ),
            BottomSheetButton(
              text: Translations.groceryListSettings.listSettings,
              iconPath: Assets.icons.gear.path,
              onTap: () => context
                ..pop()
                ..pushNamed(AppRoute.groceryListSettings.named),
            ),
          ],
        );
      },
    );
  }
}
