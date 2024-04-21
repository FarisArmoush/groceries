import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_list.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_rail_header.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/you_have_no_grocery_lists.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListsRail extends StatelessWidget {
  const GroceryListsRail({
    required this.lists,
    super.key,
  });

  final List<GroceryListModel> lists;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      children: [
        if (lists.isNotEmpty)
          const GroceryListsRailHeader()
        else
          RailTitle(
            title: Text(Translations.home.myLists),
          ),
        SizedBox(
          height: lists.isNotEmpty
              ? context.deviceHeight * 0.025
              : context.deviceHeight * 0.05,
        ),
        if (lists.isNotEmpty)
          GroceryListsList(
            lists: lists,
          )
        else
          const YouDontHaveGroceryLists(),
      ],
    );
  }
}
