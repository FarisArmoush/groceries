part of '../grocery_list_details.dart';

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
            BottomSheetButton(
              text: AppTranslations.groceryLists.sendListAsText,
              iconPath: Assets.svg.icSend.path,
              onTap: () {},
            ),
            BottomSheetButton(
              text: AppTranslations.groceryLists.printList,
              iconPath: Assets.svg.icPrinter.path,
              onTap: () {},
            ),
            BottomSheetButton(
              text: AppTranslations.groceryListSettings.listSettings,
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
