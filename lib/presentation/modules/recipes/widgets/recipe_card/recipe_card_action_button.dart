import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

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
        // ignore: deprecated_member_use
        color: context.theme.primaryColor,
      ),
      label: Text(
        label,
        style: TextStyle(
          fontFamily: AppFonts.light(context),
          color: context.theme.primaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
