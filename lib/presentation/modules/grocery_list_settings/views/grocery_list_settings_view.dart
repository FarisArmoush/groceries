import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/bloc/grocery_list_settings_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/grocery_list_form.dart';

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
