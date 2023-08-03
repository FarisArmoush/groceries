// ignore_for_file: dead_code
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
        title: Row(
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
        actions: const [
          GroceryListOptionsButton(),
        ],
      ),
      // TEMPORARY: Until connected with bloc and firestore.
      body: false ? const EmptyGroceryList() : const GroceryListDetailsForm(),
      floatingActionButton:
          false ? const SizedBox.shrink() : const GroceryListDetailsFab(),
    );
  }
}
