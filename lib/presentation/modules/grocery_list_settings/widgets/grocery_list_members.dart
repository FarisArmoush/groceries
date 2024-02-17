import 'package:flutter/material.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/member_card.dart';

class GroceryListMembers extends StatelessWidget {
  const GroceryListMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: ListTile.divideTiles(
        context: context,
        tiles: List.generate(
          2,
          (index) => MemberCard(
            userModel: UserModel(
              id: '',
              name: 'Faris $index',
              email: 'fariskarmoush@gmail.com $index',
              imageUrl: 'mockImage',
              creationDate: DateTime.timestamp(),
            ),
          ),
        ),
      ).toList(),
    );
  }
}
