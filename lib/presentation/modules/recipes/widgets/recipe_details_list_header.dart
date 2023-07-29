import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class RecipeDetailsListHeader extends StatelessWidget {
  const RecipeDetailsListHeader(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        fontSize: 24,
        color: context.theme.primaryColor,
      ),
    );
  }
}
