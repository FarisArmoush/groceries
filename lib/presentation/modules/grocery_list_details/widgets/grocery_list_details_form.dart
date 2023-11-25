part of '../grocery_list_details.dart';

class GroceryListDetailsForm extends StatelessWidget {
  const GroceryListDetailsForm({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GroceriesList(
          groceries: listModel.items,
        ),
        SizedBox(
          height: context.deviceHeight * 0.1,
        ),
      ],
    );
  }
}
