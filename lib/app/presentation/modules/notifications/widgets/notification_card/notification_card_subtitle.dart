import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class NotificationCardSubtitle extends StatelessWidget {
  const NotificationCardSubtitle({
    required this.subtitle,
    Key? key,
  }) : super(key: key);
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: AppTextStyles.poppinsLight(
        color: Theme.of(context).hintColor,
        fontSize: 12,
      ),
    );
  }
}
