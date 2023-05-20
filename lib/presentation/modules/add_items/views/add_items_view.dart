import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_model.dart';
import 'package:groceries/presentation/modules/add_items/widgets/add_items_fab.dart';
import 'package:groceries/presentation/modules/add_items/widgets/grocery_item_card.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class AddItemsView extends StatelessWidget {
  const AddItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _list.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppTranslations.addItems),
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
            context.deviceHeight * 0.1,
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
        floatingActionButton: const AddItemsFab(),
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
