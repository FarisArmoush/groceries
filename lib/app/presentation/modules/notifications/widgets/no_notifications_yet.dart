import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class NoNotificationsYet extends StatelessWidget {
  const NoNotificationsYet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Nothing To Find Here...',
        textAlign: TextAlign.center,
        style: AppTextStyles.poppinsMedium(
          color: Theme.of(context).hintColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
