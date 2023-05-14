import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class BottomSheetsHeader extends StatelessWidget {
  const BottomSheetsHeader({
    this.header,
    this.buttonText,
    super.key,
  });

  final String? header;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          header ?? 'Options',
          style: AppTextStyles.medium(
            context: context,
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
        TextButton(
          child: Text(
            buttonText ?? AppTranslations.close,
          ),
          onPressed: () => context.pop(),
        ),
      ],
    );
  }
}
