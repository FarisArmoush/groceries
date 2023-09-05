part of '../grocery_list_details.dart';

class GroceriesBoxList extends StatelessWidget {
  const GroceriesBoxList({
    required this.list,
    required this.index,
    super.key,
  });
  final int index;
  final List<GroceryModel>? list;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.cardColor,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list!.length,
        itemBuilder: (context, index) {
          var item = list![index];
          return StatefulBuilder(
            builder: (context, setState) {
              return ListTile(
                tileColor: Colors.transparent,
                title: Text(item.name),
                subtitle: Text(item.notes),
                trailing: IconButton(
                  onPressed: () => setState(
                    () => item = item.copyWith(isDone: !item.isDone),
                  ),
                  icon: item.isDone
                      ? Assets.svg.icCheckCircle.svg(
                          color: Colors.green,
                        )
                      : Assets.svg.icCircleX.svg(
                          color: context.theme.primaryColor,
                        ),
                ),
                onTap: () =>
                    showModalBottomSheet<GroceryItemDetailsBottomSheet>(
                  context: context,
                  elevation: 0,
                  showDragHandle: true,
                  useSafeArea: true,
                  isScrollControlled: true,
                  builder: (context) => GroceryItemDetailsBottomSheet(
                    groceryModel: item,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
