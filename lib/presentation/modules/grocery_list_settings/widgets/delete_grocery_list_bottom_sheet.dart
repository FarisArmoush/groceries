import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class DeleteGroceryListBottomSheet extends StatelessWidget {
  const DeleteGroceryListBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      children: [
        Text(
          AppTranslations.deleteGroceryListBottomSheetHeader,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.deleteGroceryListBottomSheetBody,
          style: context.theme.dialogTheme.contentTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        FilledButton(
          onPressed: () => context.pop(),
          child: Text(
            AppTranslations.yesDeleteList,
          ),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(
            AppTranslations.dontDeleteList,
          ),
        ),
      ],
    );
  }
}