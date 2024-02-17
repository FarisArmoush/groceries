import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class RecipeCardTitle extends StatelessWidget {
  const RecipeCardTitle({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontWeight: AppFontWeights.semiBold,
        color: context.theme.primaryColor,
        fontSize: 32,
      ),
    );
  }
}
