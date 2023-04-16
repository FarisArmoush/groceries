import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class BottomSheetsHeader extends StatelessWidget {
  const BottomSheetsHeader({
    this.header,
    this.buttonText,
    Key? key,
  }) : super(key: key);

  final String? header;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          header ?? 'Options',
          style: AppTextStyles.poppinsMedium(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
        TextButton(
          child: Text(
            buttonText ?? 'Close',
            style: AppTextStyles.poppinsRegular(
              color: Theme.of(context).primaryColorLight,
              fontSize: 16,
            ),
          ),
          onPressed: () => context.pop(),
        ),
      ],
    );
  }
}
