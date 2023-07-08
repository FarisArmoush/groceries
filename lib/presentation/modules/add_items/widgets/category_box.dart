import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

part '_add_items_button.dart';
part '_category_box_divider.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    required this.category,
    super.key,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _CategoryBoxDivider(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.deviceHeight * 0.0175,
              horizontal: context.deviceWidth * 0.1,
            ),
            child: Text(
              category,
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
                color: context.theme.primaryColor,
                fontSize: 14,
              ),
            ),
          ),
          const _CategoryBoxDivider(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.deviceWidth * 0.1,
            ),
            child: const _AddItemsButton(),
          ),
          const _CategoryBoxDivider(),
        ],
      ),
    );
  }
}
