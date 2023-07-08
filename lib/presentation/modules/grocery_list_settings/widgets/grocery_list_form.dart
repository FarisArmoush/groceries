import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/delete_grocery_list_button.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/edit_list_image.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/grocery_list_name_text_field.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/list_members_box.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/save_grocery_list_changes_button.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListForm extends StatelessWidget {
  const GroceryListForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.listSettings),
        actions: const [SaveGroceryListChangesButton()],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        primary: true,
        padding: const EdgeInsets.all(16),
        children: [
          const EditListImage(),
          SizedBox(
            height: context.deviceHeight * 0.05,
          ),
          const GroceryListNameTextField(),
          SizedBox(
            height: context.deviceHeight * 0.025,
          ),
          const ListMembersBox(),
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
