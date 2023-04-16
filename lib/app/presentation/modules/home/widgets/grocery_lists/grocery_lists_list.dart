import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/data/models/list_model.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/create_new_grocery_list_card_button.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/grocery_list_card.dart';

class GroceryListsList extends StatelessWidget {
  const GroceryListsList({
    required this.lists,
    Key? key,
  }) : super(key: key);

  final List<ListModel> lists;

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
            return const CreateNewGroceryListCardButton();
          } else {
            return GroceryListCard(
              listModel: ListModel(
                uid: lists[index].uid,
                groupName: lists[index].groupName,
                imageUrl: lists[index].imageUrl,
                tasksAmount: lists[index].tasksAmount,
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
