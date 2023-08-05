part of '../add_items.dart';

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
