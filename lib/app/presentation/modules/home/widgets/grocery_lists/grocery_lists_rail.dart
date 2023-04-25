import 'package:flutter/material.dart';
import 'package:groceries/app/data/models/grocery_list_model.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/create_new_grocery_list_card_button.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/grocery_lists_list.dart';
import 'package:groceries/app/presentation/modules/home/widgets/rail_title.dart';

class GroceryListsRail extends StatelessWidget {
  const GroceryListsRail({
    required this.lists,
    Key? key,
  }) : super(key: key);

  final List<GroceryListModel> lists;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const RailTitle(title: 'Lists'),
        SizedBox(
          height: size.height * 0.025,
        ),
        if (lists.isNotEmpty)
          GroceryListsList(
            lists: lists,
          )
        else
          const CreateNewGroceryListCardButton(
            text: 'Create your first List!, Now!',
          ),
      ],
    );
  }
}
