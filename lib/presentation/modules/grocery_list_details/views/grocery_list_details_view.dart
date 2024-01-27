part of '../grocery_list_details.dart';

class GroceryListDetailsView extends StatelessWidget {
  const GroceryListDetailsView({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    final listIsEmpty = listModel.items?.isEmpty ?? true;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            GroceriesAppBar(
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GroceryListOptionsButton(
                    listModel: listModel,
                  ),
                  Visibility(
                    // TODO(FarisArmoush): Test
                    visible: !listIsEmpty,
                    child: const ClearGroceryListItemsButton(),
                  ),
                ],
              ),
              largeTitle: _appBarTitle(context),
              middle: _appBarTitle(context),
            ),
            // TODO(FarisArmoush): Test
            if (listIsEmpty)
              const EmptyGroceryList().asSliver()
            else
              GroceryListDetailsForm(
                listModel: listModel,
              ).asSliver(),
          ],
        ),
      ),
      // TODO(FarisArmoush): Test
      floatingActionButton:
          listIsEmpty ? const SizedBox.shrink() : const GroceryListDetailsFab(),
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
        Text(listModel.name ?? ''),
      ],
    );
  }
}
