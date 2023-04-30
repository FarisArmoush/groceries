import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/gen/assets.gen.dart';

class EmptyGroceryList extends StatelessWidget {
  const EmptyGroceryList({Key? key}) : super(key: key);

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
              child: SvgPicture.asset(
                Assets.svg.illWriting,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              AppTranslations.listIsEmpty,
              style: AppTextStyles.poppinsSemiBold(
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
              style: AppTextStyles.poppinsLight(
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
              icon: SvgPicture.asset(
                Assets.svg.icSearch,
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
