import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class UsersEmailText extends StatelessWidget {
  const UsersEmailText({
    required this.email,
    super.key,
  });
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
