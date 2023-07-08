import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Assets.svg.icCamera.svg(
        color: context.theme.primaryColor,
      ),
      label: Text(
        AppTranslations.addListImage,
        style: TextStyle(
          fontFamily: AppFonts.medium(context),
          color: context.theme.primaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
