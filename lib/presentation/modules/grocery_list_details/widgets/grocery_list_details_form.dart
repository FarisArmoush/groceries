import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class GroceryListDetailsForm extends StatelessWidget {
  const GroceryListDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar.medium(
          title: Text(
            '<NAME>',
            style: context.theme.appBarTheme.titleTextStyle,
          ),
          actions: [
            IconButton(
              onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
              tooltip: AppTranslations.addItems,
              icon: Assets.svg.icPlus.svg(
                color: context.theme.primaryColor,
              ),
            ),
            const GroceryListOptionsButton(),
          ],
        ),
        SliverList.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 50,
              width: context.deviceWidth,
              child: Center(
                child: Text('$index'),
              ),
            );
          },
        ),
      ],
    );
  }
}
