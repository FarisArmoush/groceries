import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class UpdateEmailHeaderText extends StatelessWidget {
  const UpdateEmailHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.updateEmail.header,
      style: TextStyle(
        fontWeight: AppFontWeights.semiBold,
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
