import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class BaseOnboardingPage extends StatelessWidget {
  const BaseOnboardingPage({
    required this.illustrationPath,
    required this.title,
    required this.body,
    required this.backgroundColor,
    super.key,
  });

  final String illustrationPath;
  final String title;
  final String body;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor,
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(illustrationPath).symmetricPadding(horizontal: 16),
          const Spacer(),
          Container(
            width: double.infinity,
            color: context.theme.cardColor,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: AppFonts.semiBold(context),
                    color: context.theme.primaryColor,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  body,
                  style: TextStyle(
                    fontFamily: AppFonts.regular(context),
                    color: context.theme.hintColor,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: context.deviceHeight * 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
