part of '../add_items.dart';

class GroceryItemCard extends StatelessWidget {
  const GroceryItemCard({
    required this.groceryModel,
    this.onPressed,
    super.key,
  });
  final GroceryModel groceryModel;
  final void Function()? onPressed;

  static const _activeColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    final isDone = groceryModel.isDone;
    return ListTile(
      title: Text(groceryModel.name),
      subtitle: Text(groceryModel.category),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isDone ? _activeColor : Colors.transparent,
        ),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: isDone
            ? Assets.svg.icCheckCircle.svg(
                color: _activeColor,
              )
            : Assets.svg.icPlus.svg(
                color: context.theme.primaryColor,
              ),
      ),
    );
  }
}
