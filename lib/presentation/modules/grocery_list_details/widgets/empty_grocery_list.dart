import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

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
          Translations.groceryLists.emptyListHeader,
          style: TextStyle(
            fontWeight: AppFontWeights.semiBold,
            color: context.theme.primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          Translations.groceryLists.emptyListBody,
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
          onPressed: () => context.pushNamed(AppRoute.addItems.named),
          label: Text(Translations.groceryLists.browseGroceries),
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
