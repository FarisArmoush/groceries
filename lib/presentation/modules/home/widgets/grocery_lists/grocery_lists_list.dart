import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_list_card.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListsList extends StatelessWidget {
  const GroceryListsList({required this.lists, super.key});

  final List<GroceryListModel> lists;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: lists.length,
      padding: const EdgeInsetsDirectional.symmetric(vertical: 4),
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      itemBuilder: (context, index) => GroceryListCard(listModel: lists[index]),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: context.deviceHeight * 0.01,
        );
      },
    );
  }
}
