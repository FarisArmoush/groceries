import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/modules/grocery_list/widgets/grocery_list_options_button.dart';
import 'package:groceries/app/presentation/widgets/app_sliver_app_bar.dart';
import 'package:groceries/gen/assets.gen.dart';

class GroceryListViewAppBar extends StatelessWidget {
  const GroceryListViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSliverAppBar(
      title: '<NAME>',
      actions: [
        IconButton(
          onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
          tooltip: 'Add Items',
          icon: SvgPicture.asset(
            Assets.svg.icPlus,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const GroceryListOptionsButton(),
      ],
    );
  }
}
