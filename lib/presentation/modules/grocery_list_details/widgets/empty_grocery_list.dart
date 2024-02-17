import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class EmptyGroceryList extends StatelessWidget {
  const EmptyGroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.illustrations.writing.svg(
          height: context.deviceHeight * 0.35,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        Text(
          AppTranslations.groceryLists.emptyListHeader,
          style: TextStyle(
            fontFamily: AppFonts.semiBold(context),
            color: context.theme.primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.groceryLists.emptyListBody,
          style: TextStyle(
            fontWeight: AppFontWeights.light,
            color: context.theme.hintColor,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        ElevatedButton.icon(
          onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
          label: Text(AppTranslations.groceryLists.browseGroceries),
          icon: Assets.icons.search.svg(
            colorFilter: ColorFilter.mode(
              context.theme.colorScheme.secondary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    ).centered().allPadding(16);
  }
}
