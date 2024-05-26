import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries/presentation/modules/add_items/widgets/category_box_divider.dart';
import 'package:groceries_theme/app_theme.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({required this.category, super.key});

  final String category;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryBoxDivider(),
          Text(
            category,
            style: TextStyle(
              fontWeight: AppFontWeights.regular,
              color: context.theme.primaryColor,
              fontSize: 14,
            ),
          ).symmetricPadding(
            vertical: context.deviceHeight * 0.0175,
            horizontal: context.deviceWidth * 0.1,
          ),
          const CategoryBoxDivider(),
          TextButton(
            onPressed: () {},
            child: Text(Translations.addItems.addItems),
          ).symmetricPadding(
            horizontal: context.deviceWidth * 0.1,
          ),
          const CategoryBoxDivider(),
        ],
      ),
    );
  }
}
