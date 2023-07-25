import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class GroceryItemCard extends StatelessWidget {
  const GroceryItemCard({
    required this.groceryModel,
    super.key,
  });
  final GroceryModel groceryModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(groceryModel.name),
      subtitle: Text(groceryModel.category),
      trailing: IconButton(
        onPressed: () {},
        icon: Assets.svg.icPlus.svg(
          color: context.theme.primaryColor,
        ),
      ),
    );
  }
}
