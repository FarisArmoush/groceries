import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/delete_grocery_list_button.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/edit_list_image.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/grocery_list_members.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/grocery_list_name_text_field.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/save_grocery_list_changes_button.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class GroceryListSettingsView extends StatelessWidget {
  const GroceryListSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Translations.groceryListSettings.listSettings),
        actions: const [
          SaveGroceryListChangesButton(),
        ],
      ),
      body: ListView(
        primary: true,
        padding: AppPaddings.scaffold(context),
        children: [
          const EditListImage(),
          SizedBox(
            height: context.deviceHeight * 0.05,
          ),
          const GroceryListNameTextField(),
          SizedBox(
            height: context.deviceHeight * 0.035,
          ),
          Text(
            Translations.groceryListSettings.listMembers,
            style: TextStyle(
              fontWeight: AppFontWeights.regular,
              color: context.theme.primaryColor,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const GroceryListMembers(),
          SizedBox(
            height: context.deviceHeight * 0.04,
          ),
          const DeleteGroceryListButton(),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
        ],
      ),
    );
  }
}
