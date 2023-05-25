import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/delete_grocery_list_bottom_sheet.dart';

class DeleteGroceryListButton extends StatelessWidget {
  const DeleteGroceryListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet<DeleteGroceryListBottomSheet>(
          showDragHandle: true,
          elevation: 0,
          context: context,
          builder: (context) => const DeleteGroceryListBottomSheet(),
        );
      },
      child: Text(AppTranslations.deleteList),
    );
  }
}
