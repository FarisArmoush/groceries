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
        return GroceriesList(
          groceries: state.baseGroceries,
        );
      },
    );
  }
}
