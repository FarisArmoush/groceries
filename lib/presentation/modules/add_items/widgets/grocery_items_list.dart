part of '../add_items.dart';

class GroceryItemsList extends StatelessWidget {
  const GroceryItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddItemsBloc, AddItemsState>(
      buildWhen: (previous, current) {
        return previous.status != current.status ||
            previous.baseGroceries != current.baseGroceries;
      },
      builder: (context, state) {
        return switch (state.status) {
          AddItemsStatus.loading => const AppLoadingIndicator(),
          AddItemsStatus.error => Text(state.error).centered(),
          AddItemsStatus.success => _widget(context, state),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }

  Widget _widget(BuildContext context, AddItemsState state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: ListTile.divideTiles(
        context: context,
        tiles: state.baseGroceries.map(
          (groceryModel) {
            return GroceryItemCard(
              groceryModel: groceryModel,
              onPressed: () {},
            );
          },
        ),
      ).toList(),
    );
  }
}
