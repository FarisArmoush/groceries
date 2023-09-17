part of '../../home.dart';

class GroceryListsList extends StatelessWidget {
  const GroceryListsList({required this.lists, super.key});

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
            creationDate: lists[index].creationDate,
          ),
          onTap: () => context.pushNamed(
            AppNamedRoutes.groceryListDetails,
            extra: lists[index],
          ),
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
