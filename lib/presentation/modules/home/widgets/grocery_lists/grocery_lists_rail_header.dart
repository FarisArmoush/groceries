import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class GroceryListsRailHeader extends StatelessWidget {
  const GroceryListsRailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LeftFadeInAnimation(
          child: RailTitle(title: AppTranslations.myLists),
        ),
        RightFadeInAnimation(
          child: TextButton.icon(
            label: Text(AppTranslations.createNewList),
            onPressed: () => context.pushNamed(AppNamedRoutes.createList),
            icon: Assets.svg.icPlusCircle.svg(
              color: context.theme.primaryColorLight,
            ),
          ),
        ),
      ],
    );
  }
}
