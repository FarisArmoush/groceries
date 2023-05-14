import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_model.dart';
import 'package:groceries/presentation/modules/grocery_list/widgets/grocery_item_card.dart';
import 'package:groceries/presentation/widgets/app_bar_title.dart';

class AddItemsView extends StatelessWidget {
  const AddItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _list.length,
      child: Scaffold(
        appBar: AppBar(
          title: AppBarTitle(AppTranslations.addItems),
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
            size.height * 0.1,
          ),
          physics: const BouncingScrollPhysics(),
          itemCount: _list.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 12,
            );
          },
          itemBuilder: (context, index) => GroceryItemCard(
            groceryModel: GroceryModel(
              id: _list[index],
              name: _list[index],
              category: _list[index],
              notes: _list[index],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          tooltip: AppTranslations.done,
          label: Text(
            AppTranslations.done,
          ),
          onPressed: () => context.pop(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

List<String> _list = [
  'All',
  'Meats',
  'Fruits and Vegetables',
  'Poultry',
  'Health Care',
];
