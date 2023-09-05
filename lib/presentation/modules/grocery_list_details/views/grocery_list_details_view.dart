part of '../grocery_list_details.dart';

class GroceryListDetailsView extends StatelessWidget {
  const GroceryListDetailsView({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInAnimation(
          child: Row(
            children: [
              Icon(
                CupertinoIcons.bag,
                color: context.theme.primaryColor,
              ),
              SizedBox(
                width: context.deviceWidth * 0.02,
              ),
              Text(listModel.name),
            ],
          ),
        ),
        actions: [
          FadeInAnimation(
            child: const GroceryListOptionsButton(),
          ),
          const ClearGroceryListItemsButton(),
        ],
      ),
      body: listModel.items.isEmpty
          ? const EmptyGroceryList()
          : GroceryListDetailsForm(
              listModel: listModel,
            ),
      floatingActionButton: listModel.items.isEmpty
          ? const SizedBox.shrink()
          : const GroceryListDetailsFab(),
    );
  }
}
