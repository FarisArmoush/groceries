import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/grocery_list_details/grocery_list_details_entity.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/groceries_list.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListDetailsForm extends StatelessWidget {
  const GroceryListDetailsForm({
    required this.listModel,
    super.key,
  });

  final GroceryListDetailsEntity? listModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GroceriesList(
          groceries: listModel?.items,
        ),
        SizedBox(
          height: context.deviceHeight * 0.1,
        ),
      ],
    );
  }
}
