import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';
import 'package:groceries/gen/assets.gen.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkSparkle.splashFactory,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              color: Theme.of(context).hintColor,
            ),
            const SizedBox(
              width: 24,
            ),
            Flexible(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.poppinsRegular(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      subtitle,
                      style: AppTextStyles.poppinsRegular(
                        color: Theme.of(context).hintColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              Assets.svg.icRightArrow,
              color: Theme.of(context).hintColor,
            ),
          ],
        ),
      ),
    );
  }
}
