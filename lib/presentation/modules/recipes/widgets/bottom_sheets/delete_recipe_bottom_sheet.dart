import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class DeleteRecipeBottomSheet extends StatelessWidget {
  const DeleteRecipeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      enableDrag: false,
      builder: (context) {
        return ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32,
          ),
          children: [
            Text(
              AppTranslations.youSureYouWantToDeleteThisRecipe,
              style: TextStyle(
                fontFamily: AppFonts.semiBold(context),
                color: Theme.of(context).primaryColor,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: Text(
                AppTranslations.yesDeleteRecipe,
              ),
            ),
            OutlinedButton(
              onPressed: () => context.pop(),
              child: Text(
                AppTranslations.noKeepIt,
              ),
            ),
          ],
        );
      },
    );
  }
}
