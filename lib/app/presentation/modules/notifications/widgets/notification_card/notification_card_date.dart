import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class NotificationCardDate extends StatelessWidget {
  const NotificationCardDate({
    required this.date,
    Key? key,
  }) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${date.day}/${date.month}/${date.year}',
      style: AppTextStyles.poppinsLight(
        color: Theme.of(context).hintColor,
        fontSize: 12,
      ),
    );
  }
}
