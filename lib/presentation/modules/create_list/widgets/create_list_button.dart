part of '../create_list.dart';

class CreateListButton extends StatelessWidget {
  const CreateListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateListBloc, CreateListState>(
      builder: (context, state) => state.status.maybeWhen(
        loading: AppLoadingIndicator.new,
        orElse: () => ElevatedButton(
          onPressed: state.isValid ? () => _submit(context, state) : null,
          child: Text(AppTranslations.createGroceryList.createList),
        ),
      ),
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.isValid != current.isValid,
    );
  }

  void _submit(BuildContext context, CreateListState state) {
    context.read<CreateListBloc>().add(
          CreateListEvent.createList(
            groceryListModel: GroceryListModel(
              id: null,
              name: state.listName.value,
              imageUrl: state.icon,
              items: null,
              members: null,
              creationDate: DateTime.now(),
            ),
          ),
        );
  }
}
