import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/home/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_rail.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';

class GroceryListsForm extends StatelessWidget {
  const GroceryListsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryListsBloc, GroceryListsState>(
      builder: (context, state) {
        if (state is GroceryListsInitial) {
          return const AppLoadingIndicator();
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
