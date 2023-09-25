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
      leading: _icon(context),
      title: Text(groceryModel.name ?? 'null'),
      subtitle: Text(groceryModel.categoryId ?? 'null'),
      trailing: IconButton(
        onPressed: onPressed,
        icon: isDone!
            ? Assets.svg.icCheckCircle.svg(
                color: Colors.green,
              )
            : Assets.svg.icPlus.svg(
                color: context.theme.primaryColor,
              ),
      ),
    );
  }

  Widget _icon(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: SvgPicture.asset(
        Assets.svg.icBeef.path,
        // ignore: deprecated_member_use
        color: context.theme.colorScheme.secondary,
        height: context.deviceHeight * 0.03,
      ),
    );
  }
}
