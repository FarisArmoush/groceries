import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/grocery_list/widgets/empty_grocery_list.dart';
import 'package:groceries/presentation/modules/grocery_list/widgets/grocery_list_options_button.dart';
import 'package:groceries/presentation/widgets/app_bar_title.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class GroceryListView extends StatelessWidget {
  const GroceryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle('<NAME>'),
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
            tooltip: AppTranslations.addItems,
            icon: Assets.svg.icPlus.svg(
              color: Theme.of(context).primaryColor,
            ),
          ),
          const GroceryListOptionsButton(),
        ],
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          EmptyGroceryList(),
        ],
      ),
    );
  }
}
