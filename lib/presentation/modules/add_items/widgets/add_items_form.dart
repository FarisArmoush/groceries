part of '../add_items.dart';

class AddItemsForm extends StatelessWidget {
  const AddItemsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.addItems.addItems),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        physics: const BouncingScrollPhysics(),
        children: [
          const AddItemsCategoriesList(),
          SizedBox(
            height: context.deviceHeight * 0.04,
          ),
          const GroceryItemsList(),
          SizedBox(
            height: context.deviceHeight * 0.1,
          ),
        ],
      ),
      bottomSheet: const AddItemsTextField(),
    );
  }
}
