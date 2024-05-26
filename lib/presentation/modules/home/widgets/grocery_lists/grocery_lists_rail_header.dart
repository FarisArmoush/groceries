import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';
import 'package:groceries/presentation/router/app_route.dart';

class GroceryListsRailHeader extends StatelessWidget {
  const GroceryListsRailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: RailTitle(
            title: Text(Translations.home.myLists),
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 2,
          child: TextButton.icon(
            label: FittedBox(
              child: Text(
                Translations.createGroceryList.createNewList,
                maxLines: 1,
              ),
            ),
            icon: Assets.icons.plusCircle.svg(
              colorFilter: ColorFilter.mode(
                context.theme.primaryColorLight,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () => context.pushNamed(AppRoute.createList.named),
          ),
        ),
      ],
    );
  }
}
