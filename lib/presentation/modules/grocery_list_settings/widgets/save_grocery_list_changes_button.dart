part of '../grocery_list_settings.dart';

class SaveGroceryListChangesButton extends StatelessWidget {
  const SaveGroceryListChangesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pop(),
      child: Text(AppTranslations.groceryListSettings.saveListChanges),
    );
  }
}
