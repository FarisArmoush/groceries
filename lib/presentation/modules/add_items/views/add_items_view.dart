part of '../add_items.dart';

class AddItemsView extends StatelessWidget {
  const AddItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _list.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppTranslations.addItems.addItems),
          bottom: TabBar(
            physics: const BouncingScrollPhysics(),
            isScrollable: true,
            tabs: _list.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsetsDirectional.fromSTEB(
            16,
            24,
            16,
            context.deviceHeight * 0.11,
          ),
          physics: const BouncingScrollPhysics(),
          itemCount: _list.length,
          itemBuilder: (context, index) => GroceryItemCard(
            groceryModel: GroceryModel(
              id: _list[index],
              name: _list[index],
              category: _list[index],
              notes: _list[index],
            ),
          ),
          separatorBuilder: (context, index) {
            return SizedBox(height: context.deviceHeight * 0.01);
          },
        ),
        bottomSheet: const AddItemsTextField().allPadding(16),
      ),
    );
  }
}

const _list = <String>[
  'All',
  'Meats',
  'Fruits and Vegetables',
  'Poultry',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
  'Health Care',
];
