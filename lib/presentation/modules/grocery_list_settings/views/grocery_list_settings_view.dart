part of '../grocery_list_settings.dart';

class GroceryListSettingsView extends StatelessWidget {
  const GroceryListSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GroceryListSettingsBloc>(
      create: (context) => GroceryListSettingsBloc(),
      child: const GroceryListForm(),
    );
  }
}
