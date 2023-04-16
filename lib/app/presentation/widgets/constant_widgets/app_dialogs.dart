// ignore_for_file: strict_raw_type
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/presentation/widgets/buttons/app_button.dart';

class AppDialogs {
  static Future discardDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => SimpleDialog(
        backgroundColor: Theme.of(context).cardColor,
        title: Text(
          'Are you sure you want to cancel?',
          style: AppTextStyles.poppinsMedium(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.all(32),
        children: [
          AppButton(
            text: 'Yes, Go Back',
            buttonStyle: AppButtonStyles.red(context),
            onTap: () {
              context
                ..pop()
                ..pop();
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.013,
          ),
          AppButton(
            text: 'Nah, Just Kidding',
            buttonStyle: AppButtonStyles.transparent(context),
            onTap: () {
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
