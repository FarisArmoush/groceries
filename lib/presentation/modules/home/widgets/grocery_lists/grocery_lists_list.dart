import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/create_new_grocery_list_card_button.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_list_card.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class GroceryListsList extends StatelessWidget {
  const GroceryListsList({
    required this.lists,
    super.key,
  });

  final List<GroceryListModel> lists;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeight * 0.31,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: lists.length + 1,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 4),
        itemBuilder: (context, index) {
          if (index == lists.length) {
            return CreateNewGroceryListCardButton(
              text: AppTranslations.createNewList,
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
            width: context.deviceWidth * 0.01,
          );
        },
      ),
    );
  }
}
