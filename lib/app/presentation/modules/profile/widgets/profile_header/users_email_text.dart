import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class UsersEmailText extends StatelessWidget {
  const UsersEmailText({
    required this.email,
    Key? key,
  }) : super(key: key);
  final String? email;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      email ?? '',
      style: AppTextStyles.poppinsLight(
        color: Theme.of(context).hintColor,
        fontSize: 12,
      ),
      textAlign: TextAlign.center,
    );
  }
}
