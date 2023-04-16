import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class RailTitle extends StatelessWidget {
  const RailTitle({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.poppinsSemiBold(
        color: Theme.of(context).primaryColor,
        fontSize: 22,
      ),
    );
  }
}
