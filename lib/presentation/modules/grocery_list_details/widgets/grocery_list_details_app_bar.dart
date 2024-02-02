import 'package:flutter/cupertino.dart';
import 'package:groceries/data/models/grocery_list_details_model/grocery_list_details_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/clear_grocery_list_items_button.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_button.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListDetailsAppBar extends StatelessWidget {
  const GroceryListDetailsAppBar({required this.listModel, super.key});

  final GroceryListDetailsModel? listModel;

  @override
  Widget build(BuildContext context) {
    final listIsEmpty = listModel?.items?.isEmpty ?? true;

    return GroceriesAppBar(
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GroceryListOptionsButton(
            listModel: listModel,
          ),
          Visibility(
            visible: !listIsEmpty,
            child: ClearGroceryListItemsButton(
              listModel: listModel,
            ),
          ),
        ],
      ),
      largeTitle: _appBarTitle(context),
      middle: _appBarTitle(context),
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
        Text(listModel?.name ?? ''),
      ],
    );
  }
}
