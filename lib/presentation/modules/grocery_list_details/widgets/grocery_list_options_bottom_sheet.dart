part of '../grocery_list_details.dart';

class GroceryListOptionsBottomSheet extends StatelessWidget {
  const GroceryListOptionsBottomSheet({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    final itemsIsEmpty = listModel.items!.isNotEmpty;
    return BottomSheet(
      showDragHandle: false,
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return ListView(
          padding: AppPaddings.bottomSheetPadding(context),
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
                iconPath: Assets.svg.icSend.path,
                onTap: () {},
              ),
            ),
            Visibility(
              visible: itemsIsEmpty,
              child: BottomSheetButton(
                text: AppTranslations.groceryLists.printList,
                iconPath: Assets.svg.icPrinter.path,
                onTap: () {},
              ),
            ),
            BottomSheetButton(
              text: AppTranslations.groceryListSettings.listSettings,
              iconPath: Assets.svg.icGear.path,
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
