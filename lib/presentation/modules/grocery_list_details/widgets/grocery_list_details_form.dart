part of '../grocery_list_details.dart';

class GroceryListDetailsForm extends StatelessWidget {
  const GroceryListDetailsForm({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: true,
      physics: const BouncingScrollPhysics(),
      children: [
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
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
