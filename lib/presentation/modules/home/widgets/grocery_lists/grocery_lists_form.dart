part of '../../home.dart';

class GroceryListsForm extends StatelessWidget {
  const GroceryListsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryListsBloc, GroceryListsState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.when(
          initial: SizedBox.shrink,
          loading: GroceryListsShimmeredRail.new,
          success: () => GroceryListsRail(lists: state.groceryLists),
          failure: (error) => ReloadGroceryListsColumn(error: error),
        );
      },
    );
  }
}
