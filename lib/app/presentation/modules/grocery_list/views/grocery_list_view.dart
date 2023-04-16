import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/grocery_list/widgets/category/category_box.dart';
import 'package:groceries/app/presentation/modules/grocery_list/widgets/grocery_list_view_app_bar.dart';

class GroceryListView extends StatelessWidget {
  const GroceryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const GroceryListViewAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    CategoryBox(
                      category: 'Meats ${index + 1}',
                    ),
                    SizedBox(height: size.height * 0.015),
                  ],
                );
              },
              childCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}
