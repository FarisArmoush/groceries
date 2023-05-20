import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/create_new_grocery_list_card_button.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_list.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

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
      children: [
        RailTitle(
          title: AppTranslations.lists,
        ),
        SizedBox(
          height: context.deviceHeight * 0.025,
        ),
        if (lists.isNotEmpty)
          GroceryListsList(
            lists: lists,
          )
        else
          CreateNewGroceryListCardButton(
            text: AppTranslations.createNewList,
          ),
      ],
    );
  }
}
