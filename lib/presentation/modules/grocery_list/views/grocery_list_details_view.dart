import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/grocery_list/widgets/grocery_list_details_form.dart';

class GroceryListDetailsView extends StatelessWidget {
  const GroceryListDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: const EmptyGroceryList(),
      body: GroceryListDetailsForm(),
    );
  }
}
