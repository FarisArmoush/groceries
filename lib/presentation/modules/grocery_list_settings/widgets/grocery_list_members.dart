import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/user/user_entity.dart';
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
            userModel: UserEntity(
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
