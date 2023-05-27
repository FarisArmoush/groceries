import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class EmptyGroceryList extends StatelessWidget {
  const EmptyGroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      children: [
        Assets.svg.illWriting.svg(),
        Text(
          AppTranslations.emptyListHeader,
          style: TextStyle(
            fontFamily: AppFonts.semiBold(context),
            color: Theme.of(context).primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.emptyListBody,
          style: TextStyle(
            fontFamily: AppFonts.light(context),
            color: Theme.of(context).hintColor,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Assets.svg.icSearch.svg(
            color: Theme.of(context).colorScheme.secondary,
          ),
          label: Text(
            AppTranslations.browseGroceries,
          ),
        ),
      ],
    );
  }
}
