import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_list_card.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListsList extends StatelessWidget {
  const GroceryListsList({
    required this.lists,
    super.key,
  });

  final List<GroceryListModel> lists;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: lists.length,
      padding: const EdgeInsets.symmetric(vertical: 4),
      itemBuilder: (context, index) {
        return GroceryListCard(
          listModel: GroceryListModel(
            uid: lists[index].uid,
            name: lists[index].name,
            imageUrl: lists[index].imageUrl,
            items: lists[index].items,
            members: lists[index].members,
          ),
          onTap: () => context.pushNamed(AppNamedRoutes.groceryListDetails),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: context.deviceHeight * 0.01,
        );
      },
    );
  }
}
