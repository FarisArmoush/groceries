part of '../grocery_list_details.dart';

class ClearGroceryListItemsBottomSheet extends StatelessWidget {
  const ClearGroceryListItemsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: AppPaddings.bottomSheetPadding(context),
      children: [
        Text(
          AppTranslations.groceryLists.clearGroceriesFromList,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.03,
        ),
        FilledButton(
          onPressed: () => context.pop(),
          child: Text(AppTranslations.groceryLists.yesClearGroceries),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(AppTranslations.groceryLists.noDontClearGroceries),
        ),
      ],
    );
  }
}
