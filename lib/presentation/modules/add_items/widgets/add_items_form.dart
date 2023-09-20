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
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          Text(
            'Categories',
            style: TextStyle(
              fontFamily: AppFonts.semiBold(context),
              color: context.theme.primaryColor,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
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
