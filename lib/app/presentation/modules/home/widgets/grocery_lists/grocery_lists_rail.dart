import 'package:flutter/material.dart';
import 'package:groceries/app/data/models/grocery_list_model.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/create_your_first_list_button.dart';
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
    var height = MediaQuery.of(context).size.height;
    return ListView(
      padding: EdgeInsets.only(
        top: height * 0.07,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const RailTitle(title: 'Lists'),
        SizedBox(
          height: height * 0.025,
        ),
        if (lists.isNotEmpty)
          GroceryListsList(
            lists: lists,
          )
        else
          const CreateYourFirstListButton(),
      ],
    );
  }
}
