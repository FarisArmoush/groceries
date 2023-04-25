import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/data/models/grocery_list_model.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/create_new_grocery_list_card_button.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/grocery_list_card.dart';

class GroceryListsList extends StatelessWidget {
  const GroceryListsList({
    required this.lists,
    Key? key,
  }) : super(key: key);

  final List<GroceryListModel> lists;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.31,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: lists.length + 1,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 4),
        itemBuilder: (context, index) {
          if (index == lists.length) {
            return const CreateNewGroceryListCardButton(
              text: 'Create a new List',
            );
          } else {
            return GroceryListCard(
              listModel: GroceryListModel(
                uid: lists[index].uid,
                name: lists[index].name,
                imageUrl: lists[index].imageUrl,
                tasksAmount: lists[index].tasksAmount,
                members: lists[index].members,
              ),
              onTap: () => context.pushNamed(AppNamedRoutes.groceryList),
            );
          }
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: size.width * 0.01,
          );
        },
      ),
    );
  }
}
