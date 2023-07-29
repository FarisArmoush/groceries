// ignore_for_file: dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/empty_grocery_list.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_fab.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_form.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_button.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class GroceryListDetailsView extends StatelessWidget {
  const GroceryListDetailsView({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              CupertinoIcons.bag,
              color: context.theme.primaryColor,
            ),
            SizedBox(
              width: context.deviceWidth * 0.02,
            ),
            Text(listModel.name),
          ],
        ),
        actions: const [
          GroceryListOptionsButton(),
        ],
      ),
      // TEMPORARY: Until connected with bloc and firestore.
      body: false ? const EmptyGroceryList() : const GroceryListDetailsForm(),
      floatingActionButton:
          false ? const SizedBox.shrink() : const GroceryListDetailsFab(),
    );
  }
}
