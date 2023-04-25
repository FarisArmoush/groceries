import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/grocery_list/widgets/empty_grocery_list.dart';
import 'package:groceries/app/presentation/modules/grocery_list/widgets/grocery_list_view_app_bar.dart';

class GroceryListView extends StatelessWidget {
  const GroceryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          GroceryListViewAppBar(),
          EmptyGroceryList(),
        ],
      ),
    );
  }
}
