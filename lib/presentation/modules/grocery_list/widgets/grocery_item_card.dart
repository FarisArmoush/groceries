import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_model.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class GroceryItemCard extends StatelessWidget {
  const GroceryItemCard({
    required this.groceryModel,
    super.key,
  });
  final GroceryModel groceryModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        groceryModel.name,
        style: AppTextStyles.poppinsRegular(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        groceryModel.category,
        style: AppTextStyles.poppinsLight(
          color: Theme.of(context).hintColor,
          fontSize: 14,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Assets.svg.icPlus.svg(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
