import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class RailTitle extends StatelessWidget {
  const RailTitle({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.semiBold(
        context: context,
        color: Theme.of(context).primaryColor,
        fontSize: 22,
      ),
    );
  }
}
