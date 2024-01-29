import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/clear_grocery_list_items_button.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/empty_grocery_list.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_fab.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_form.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_button.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
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
            GroceriesAppBar(
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GroceryListOptionsButton(
                    listModel: listModel,
                  ),
                  Visibility(
                    visible: !listIsEmpty,
                    child: const ClearGroceryListItemsButton(),
                  ),
                ],
              ),
              largeTitle: _appBarTitle(context),
              middle: _appBarTitle(context),
            ),
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

  Widget _appBarTitle(BuildContext context) {
    return Row(
      children: [
        Icon(
          CupertinoIcons.bag,
          color: context.theme.primaryColor,
        ),
        SizedBox(
          width: context.deviceWidth * 0.02,
        ),
        Text(listModel.name ?? ''),
      ],
    );
  }
}
