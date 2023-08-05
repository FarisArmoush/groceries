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
                  AppTranslations.listOptions,
                  style: TextStyle(
                    fontFamily: AppFonts.regular(context),
                    color: context.theme.primaryColor,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  child: Text(
                    AppTranslations.close,
                  ),
                  onPressed: () => context.pop(),
                ),
              ],
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
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
