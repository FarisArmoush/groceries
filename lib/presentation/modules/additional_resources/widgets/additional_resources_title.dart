import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class AdditionalResourcesTitle extends StatelessWidget {
  const AdditionalResourcesTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: Theme.of(context).primaryColor,
        fontSize: 18,
      ),
    );
  }
}
