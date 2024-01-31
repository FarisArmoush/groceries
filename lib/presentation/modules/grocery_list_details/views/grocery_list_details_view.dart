import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/empty_grocery_list.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_app_bar.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_fab.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_form.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class GroceryListDetailsView extends StatelessWidget {
  const GroceryListDetailsView({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    final listIsEmpty = listModel.items?.isEmpty ?? true;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            GroceryListDetailsAppBar(listModel: listModel),
            if (listIsEmpty)
              const EmptyGroceryList().asSliver()
            else
              GroceryListDetailsForm(
                listModel: listModel,
              ).asSliver(),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: !listIsEmpty,
        child: const GroceryListDetailsFab(),
      ),
    );
  }
}
