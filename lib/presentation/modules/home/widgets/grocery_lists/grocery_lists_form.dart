part of '../../home.dart';

class GroceryListsForm extends StatelessWidget {
  const GroceryListsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryListsBloc, GroceryListsState>(
      builder: (context, state) {
        return switch (state) {
          GroceryListsLoading() => const GroceryListsShimmeredRail(),
          GroceryListsLoaded() => GroceryListsRail(lists: state.lists),
          GroceryListsFailed() => ReloadGroceryListsColumn(error: state.error),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
