part of '../../home.dart';

class GroceryListsRail extends StatelessWidget {
  const GroceryListsRail({
    required this.lists,
    super.key,
  });

  final List<GroceryListModel> lists;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        if (lists.isNotEmpty)
          const GroceryListsRailHeader()
        else
          RailTitle(title: AppTranslations.home.myLists),
        SizedBox(
          height: lists.isNotEmpty
              ? context.deviceHeight * 0.025
              : context.deviceHeight * 0.05,
        ),
        if (lists.isNotEmpty)
          GroceryListsList(
            lists: lists,
          )
        else
          const YouDontHaveGroceryLists(),
      ],
    );
  }
}
