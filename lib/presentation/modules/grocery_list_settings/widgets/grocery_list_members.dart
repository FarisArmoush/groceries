part of '../grocery_list_settings.dart';

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
              uid: '',
              name: 'Faris $index',
              email: 'fariskarmoush@gmail.com $index',
              imageUrl: mockImage,
            ),
          ),
        ),
      ).toList(),
    );
  }
}
