import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class AppDialogContentText extends StatelessWidget {
  const AppDialogContentText({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.poppinsRegular(
        color: Theme.of(context).primaryColor,
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
    );
  }
}
