import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class DisplayNameText extends StatelessWidget {
  const DisplayNameText({
    required this.name,
    super.key,
  });
  final String? name;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      name ?? '',
      style: AppTextStyles.poppinsMedium(
        color: Theme.of(context).primaryColor,
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
    );
  }
}
