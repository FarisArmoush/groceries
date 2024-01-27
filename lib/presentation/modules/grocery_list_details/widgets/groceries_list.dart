part of '../grocery_list_details.dart';

class GroceriesList extends StatelessWidget {
  const GroceriesList({
    required this.groceries,
    this.showHeader = true,
    super.key,
  });

  final List<GroceryModel?>? groceries;
  final bool showHeader;

  @override
  Widget build(BuildContext context) {
    final itemsGroupedByCategory = groupBy(
      groceries ?? <GroceryModel>[],
      (GroceryModel? groceryModel) => groceryModel?.categoryId,
    );
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemsGroupedByCategory.length,
      itemBuilder: (context, index) {
        final category = itemsGroupedByCategory.keys.elementAt(index);
        final categoryItems = itemsGroupedByCategory[category];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: showHeader,
              child: GroceriesBoxHeader(
                category: category?.tr() ?? '',
                assetPath: Assets.svg.icAlertTriangle.path,
              ),
            ),
            GroceriesBoxList(
              list: categoryItems,
            ),
          ],
        );
      },
      separatorBuilder: (context, _) {
        return SizedBox(
          height: context.deviceHeight * 0.02,
        );
      },
    );
  }
}
