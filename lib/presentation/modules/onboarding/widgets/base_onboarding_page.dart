import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class BaseOnboardingPage extends StatelessWidget {
  const BaseOnboardingPage({
    required this.illustrationPath,
    required this.title,
    required this.body,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  final String illustrationPath;
  final String title;
  final String body;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ColoredBox(
      color: backgroundColor,
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: SvgPicture.asset(illustrationPath),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.semiBold(
                    context: context,
                    color: Theme.of(context).primaryColor,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  body,
                  style: AppTextStyles.regular(
                    context: context,
                    color: Theme.of(context).hintColor,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
