part of '../grocery_list_details.dart';

class GroceriesBoxList extends StatelessWidget {
  const GroceriesBoxList({
    required this.list,
    super.key,
  });
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
          tiles: list?.map(
                (GroceryModel? item) => ListTile(
                  tileColor: AppColors.transparent,
                  title: Text(item?.name ?? ''),
                  subtitle:
                      // TODO(FarisArmoush): Test
                      item?.notes == null || (item?.notes?.isEmpty ?? false)
                          ? null
                          : Text(item?.notes ?? ''),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: item?.isDone ?? false // TODO(FarisArmoush): Test
                        ? Assets.svg.icDoubleCheck.svg(
                            colorFilter: const ColorFilter.mode(
                              Colors.green,
                              BlendMode.srcIn,
                            ),
                          )
                        : Assets.svg.icCheck.svg(
                            colorFilter: ColorFilter.mode(
                              context.theme.primaryColor,
                              BlendMode.srcIn,
                            ),
                          ),
                  ),
                  onTap: () => showModalBottomSheet<void>(
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
              ) ??
              [],
        ).toList(),
      ),
    );
  }
}
