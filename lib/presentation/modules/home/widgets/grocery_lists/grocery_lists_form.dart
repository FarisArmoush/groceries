part of '../../home.dart';

class GroceryListsForm extends StatelessWidget {
  const GroceryListsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryListsBloc, GroceryListsState>(
      builder: (context, state) {
        return state.status.when(
          initial: SizedBox.shrink,
          loading: GroceryListsShimmeredRail.new,
          success: () => GroceryListsRail(lists: state.groceryLists),
          failure: (error) => ReloadGroceryListsColumn(error: error),
        );
        // return switch (state) {
        //   GroceryListsLoading() => const GroceryListsShimmeredRail(),
        //   GroceryListsLoaded() => GroceryListsRail(lists: state.lists),
        //   GroceryListsFailed() => ReloadGroceryListsColumn(error: state.error),
        //   _ => const SizedBox.shrink(),
        // };
      },
    );
  }
}
