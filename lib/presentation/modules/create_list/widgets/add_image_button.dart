import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Assets.svg.icCamera.svg(
        color: Theme.of(context).primaryColor,
      ),
      label: Text(
        AppTranslations.addImageToList,
        style: AppTextStyles.medium(
          context: context,
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
