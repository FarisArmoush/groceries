import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/presentation/modules/add_items/widgets/grocery_item_card_icon.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryItemCard extends StatelessWidget {
  const GroceryItemCard({
    required this.groceryModel,
    this.onPressed,
    super.key,
  });
  final GroceryModel groceryModel;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDone = groceryModel.isDone ?? false;
    return ListTile(
      leading: GroceryItemCardIcon(groceryModel: groceryModel),
      title: Text(groceryModel.name ?? ''),
      subtitle: Text(groceryModel.categoryId ?? ''),
      trailing: IconButton(
        onPressed: onPressed,
        icon: isDone
            ? Assets.icons.checkCircle.svg(
                colorFilter: const ColorFilter.mode(
                  Colors.green,
                  BlendMode.srcIn,
                ),
              )
            : Assets.icons.plus.svg(
                colorFilter: ColorFilter.mode(
                  context.theme.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
      ),
    );
  }
}
