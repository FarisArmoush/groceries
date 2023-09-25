part of '../add_items.dart';

class AddItemsView extends StatelessWidget {
  const AddItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddItemsBloc(
        context.read<BaseGroceriesUseCase>(),
      )..add(const GetParentCategories()),
      child: const AddItemsForm(),
    );
  }
}
