import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class EmptyGroceryList extends StatelessWidget {
  const EmptyGroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              height: size.height * 0.45,
              child: Assets.svg.illWriting.svg(),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              AppTranslations.listIsEmpty,
              style: AppTextStyles.semiBold(
                context: context,
                color: Theme.of(context).primaryColor,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              AppTranslations.addItemsToList,
              style: AppTextStyles.light(
                context: context,
                color: Theme.of(context).hintColor,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.02,
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
        ),
      ),
    );
  }
}
