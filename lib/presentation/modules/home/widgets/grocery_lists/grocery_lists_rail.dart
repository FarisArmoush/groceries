import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/grocery_list/grocery_list_entity.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_list.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_rail_header.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/you_have_no_grocery_lists.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';

class GroceryListsRail extends StatelessWidget {
  const GroceryListsRail({
    required this.lists,
    super.key,
  });

  final List<GroceryListEntity> lists;

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
