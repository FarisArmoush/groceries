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
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          CupertinoSliverNavigationBar(
            transitionBetweenRoutes: false,
            trailing: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GroceryListOptionsButton(),
                ClearGroceryListItemsButton(),
              ],
            ),
            largeTitle: _appBarTitle(
              context,
              TextStyle(
                fontFamily: AppFonts.regular(context),
                fontSize: 28,
                color: context.theme.primaryColor,
              ),
            ),
            middle: _appBarTitle(
              context,
              context.theme.appBarTheme.titleTextStyle,
            ),
            alwaysShowMiddle: false,
            backgroundColor: context.theme.scaffoldBackgroundColor,
          ),
          if (listModel.items!.isEmpty)
            const EmptyGroceryList().asSliver()
          else
            GroceryListDetailsForm(
              listModel: listModel,
            ).asSliver(),
        ],
      ),
      floatingActionButton: listModel.items!.isEmpty
          ? const SizedBox.shrink()
          : const GroceryListDetailsFab(),
    );
  }

  Widget _appBarTitle(BuildContext context, TextStyle? textStyle) {
    return Row(
      children: [
        Icon(
          CupertinoIcons.bag,
          color: context.theme.primaryColor,
        ),
        SizedBox(
          width: context.deviceWidth * 0.02,
        ),
        Text(
          listModel.name ?? 'null',
          style: textStyle,
        ),
      ],
    );
  }
}
