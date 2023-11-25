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
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            GroceriesAppBar(
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GroceryListOptionsButton(),
                  ClearGroceryListItemsButton(),
                ],
              ),
              largeTitle: _appBarTitle(context),
              middle: _appBarTitle(context),
            ),
            if (listModel.items!.isEmpty)
              const EmptyGroceryList().asSliver()
            else
              GroceryListDetailsForm(
                listModel: listModel,
              ).asSliver(),
          ],
        ),
      ),
      floatingActionButton: listModel.items!.isEmpty
          ? const SizedBox.shrink()
          : const GroceryListDetailsFab(),
    );
  }

  Widget _appBarTitle(BuildContext context) {
    return Row(
      children: [
        Icon(
          CupertinoIcons.bag,
          color: context.theme.primaryColor,
        ),
        SizedBox(
          width: context.deviceWidth * 0.02,
        ),
        Text(listModel.name!),
      ],
    );
  }
}
