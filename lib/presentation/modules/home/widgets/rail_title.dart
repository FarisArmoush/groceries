import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class RailTitle extends StatelessWidget {
  const RailTitle({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: AppFontWeights.semiBold,
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
