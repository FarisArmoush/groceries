import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_item_tile.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceriesBoxList extends StatelessWidget {
  const GroceriesBoxList({
    required this.list,
    required this.showPriority,
    super.key,
  });
  final List<GroceryEntity?> list;
  final bool showPriority;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.cardColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: ListTile.divideTiles(
          color: context.theme.hintColor.withOpacity(0.75),
          context: context,
          tiles: list.map(
            (item) => GroceryItemTile(item: item, showPriority: showPriority),
          ),
        ).toList(),
      ),
    );
  }
}
