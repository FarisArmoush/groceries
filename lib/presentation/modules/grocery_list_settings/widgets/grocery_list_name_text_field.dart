part of '../grocery_list_settings.dart';

class GroceryListNameTextField extends StatelessWidget {
  const GroceryListNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: AppTranslations.general.listName,
    );
  }
}
