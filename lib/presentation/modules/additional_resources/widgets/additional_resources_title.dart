import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class AdditionalResourcesTitle extends StatelessWidget {
  const AdditionalResourcesTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: AppFonts.medium(context),
          color: context.theme.primaryColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
