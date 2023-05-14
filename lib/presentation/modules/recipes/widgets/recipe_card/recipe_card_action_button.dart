import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class RecipeCardActionButton extends StatelessWidget {
  const RecipeCardActionButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final String label;
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      label: Text(
        label,
        style: AppTextStyles.light(
          context: context,
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
