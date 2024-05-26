import 'package:flutter/material.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class RecipeDetailsListHeader extends StatelessWidget {
  const RecipeDetailsListHeader(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: AppFontWeights.semiBold,
        fontSize: 24,
        color: context.theme.primaryColor,
      ),
    );
  }
}
