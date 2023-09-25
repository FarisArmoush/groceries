part of '../grocery_list_details.dart';

class GroceriesList extends StatelessWidget {
  const GroceriesList({
    required this.groceries,
    super.key,
  });

  final List<GroceryModel?>? groceries;

  @override
  Widget build(BuildContext context) {
    final itemsGroupedByCategory = groupBy(
      groceries!,
      (GroceryModel? groceryModel) => groceryModel!.categoryId,
    );
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      itemCount: itemsGroupedByCategory.length,
      itemBuilder: (context, index) {
        final category = itemsGroupedByCategory.keys.elementAt(index);
        final categoryItems = itemsGroupedByCategory[category];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            GroceriesBoxHeader(
              category: category ?? 'null',
              assetPath: Assets.svg.icAlertTriangle.path,
            ),
            GroceriesBoxList(
              index: index,
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
