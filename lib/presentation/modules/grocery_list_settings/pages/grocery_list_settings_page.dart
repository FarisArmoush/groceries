part of '../grocery_list_settings.dart';

class GroceryListSettingsPage extends StatelessWidget {
  const GroceryListSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.groceryListSettings.listSettings),
        actions: const [
          SaveGroceryListChangesButton(),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        primary: true,
        padding: AppPaddings.scaffoldPadding(context),
        children: [
          const EditListImage(),
          SizedBox(
            height: context.deviceHeight * 0.05,
          ),
          const GroceryListNameTextField(),
          SizedBox(
            height: context.deviceHeight * 0.035,
          ),
          Text(
            AppTranslations.groceryListSettings.listMembers,
            style: TextStyle(
              fontFamily: AppFonts.regular(context),
              color: context.theme.primaryColor,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const GroceryListMembers(),
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
