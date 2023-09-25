part of '../grocery_list_details.dart';

class GroceriesBoxList extends StatelessWidget {
  const GroceriesBoxList({
    required this.list,
    required this.index,
    super.key,
  });
  final int index;
  final List<GroceryModel?>? list;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.cardColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: ListTile.divideTiles(
          color: context.theme.hintColor.withOpacity(0.75),
          context: context,
          tiles: list!.map(
            (item) => ListTile(
              tileColor: Colors.transparent,
              title: Text(item!.name ?? 'null'),
              subtitle: Text(item.notes ?? 'null'),
              trailing: IconButton(
                onPressed: () {},
                icon: item.isDone!
                    ? Assets.svg.icDoubleCheck.svg(
                        color: Colors.green,
                      )
                    : Assets.svg.icCheck.svg(
                        color: context.theme.primaryColor,
                      ),
              ),
              onTap: () => showModalBottomSheet<GroceryItemDetailsBottomSheet>(
                context: context,
                elevation: 0,
                showDragHandle: true,
                useSafeArea: true,
                isScrollControlled: true,
                builder: (context) => GroceryItemDetailsBottomSheet(
                  groceryModel: item,
                ),
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
