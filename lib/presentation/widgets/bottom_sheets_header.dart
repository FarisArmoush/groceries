import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

/// {@template bottom_sheets_header}
/// A header widget used in bottom sheets.
///
/// *The [header] parameter specifies the text displayed
/// as the header of the bottom sheet.
///
/// *The [buttonText] parameter specifies the text displayed on the close button
/// {@endtemplate}
class BottomSheetsHeader extends StatelessWidget {
  /// {@macro bottom_sheets_header}
  const BottomSheetsHeader({
    required this.header,
    this.buttonText,
    super.key,
  });

  /// The text displayed as the header of the bottom sheet.
  final String header;

  /// The text displayed on the close button.
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          header,
          style: TextStyle(
            fontFamily: AppFonts.regular(context),
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
