part of '../add_items.dart';

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
    final isDone = groceryModel.isDone;
    return ListTile(
      leading: GroceryItemCardIcon(groceryModel: groceryModel),
      title: Text(groceryModel.name ?? 'null'),
      subtitle: Text(groceryModel.categoryId ?? 'null'),
      trailing: IconButton(
        onPressed: onPressed,
        icon: isDone!
            ? Assets.svg.icCheckCircle.svg(
                colorFilter: const ColorFilter.mode(
                  Colors.green,
                  BlendMode.srcIn,
                ),
              )
            : Assets.svg.icPlus.svg(
                colorFilter: ColorFilter.mode(
                  context.theme.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
      ),
    );
  }
}
