import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle(this.title, {super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.medium(
        context: context,
        color: Theme.of(context).primaryColor,
        fontSize: 18,
      ),
    );
  }
}
