import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class RailTitle extends StatelessWidget {
  const RailTitle({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: DefaultTextStyle(
          style: TextStyle(
            fontWeight: AppFontWeights.semiBold,
            color: context.theme.primaryColor,
            fontSize: 22,
          ),
          child: title,
        ),
      ),
    );
  }
}
