import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class DeleteRecipeBottomSheet extends StatelessWidget {
  const DeleteRecipeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              style: AppTextStyles.poppinsSemiBold(
                color: Theme.of(context).primaryColor,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.02,
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
