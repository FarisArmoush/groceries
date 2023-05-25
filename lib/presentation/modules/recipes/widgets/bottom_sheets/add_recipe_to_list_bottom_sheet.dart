import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class AddRecipeToListBottomSheet extends StatelessWidget {
  const AddRecipeToListBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      children: [
        Text(
          AppTranslations.addRecipeToListBottomSheetHeader,
          style: Theme.of(context).dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.addRecipeToListBottomSheetBody,
          style: Theme.of(context).dialogTheme.contentTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
      ],
    );
  }
}
