part of '../../home.dart';

class GroceryListsForm extends StatelessWidget {
  const GroceryListsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryListsBloc, GroceryListsState>(
      builder: (context, state) {
        if (state is GroceryListsInitial) {
          return const GroceryListsShimmeredRail();
        }
        if (state is GroceryListsLoaded) {
          return GroceryListsRail(
            lists: state.lists,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
