import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/modules/home/widgets/home_header.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GroceriesAppBar(
      largeTitle: const HomeHeader(),
      middle: Text(
        Translations.home.home,
        style: context.theme.appBarTheme.titleTextStyle,
      ),
      automaticallyImplyLeading: false,
    );
  }
}
