import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class GroceryListOptionsBottomSheetHeader extends StatelessWidget {
  const GroceryListOptionsBottomSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppTranslations.listOptions,
          style: TextStyle(
            fontFamily: AppFonts.regular(context),
            color: context.theme.primaryColor,
            fontSize: 18,
          ),
        ),
        TextButton(
          child: Text(
            AppTranslations.close,
          ),
          onPressed: () => context.pop(),
        ),
      ],
    );
  }
}
