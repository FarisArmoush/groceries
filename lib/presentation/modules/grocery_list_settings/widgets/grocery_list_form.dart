part of '../grocery_list_settings.dart';

class GroceryListForm extends StatelessWidget {
  const GroceryListForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.listSettings),
        actions: const [SaveGroceryListChangesButton()],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        primary: true,
        padding: const EdgeInsets.all(16),
        children: [
          const EditListImage(),
          SizedBox(
            height: context.deviceHeight * 0.05,
          ),
          const GroceryListNameTextField(),
          SizedBox(
            height: context.deviceHeight * 0.025,
          ),
          const ListMembersBox(),
          SizedBox(
            height: context.deviceHeight * 0.04,
          ),
          const DeleteGroceryListButton(),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
        ],
      ),
    );
  }
}
