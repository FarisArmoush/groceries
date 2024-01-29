import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_rail.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_shimmered_rail.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/reload_grocery_lists_column.dart';

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
