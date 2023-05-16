import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class RailTitle extends StatelessWidget {
  const RailTitle({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: Theme.of(context).primaryColor,
        fontSize: 22,
      ),
    );
  }
}
