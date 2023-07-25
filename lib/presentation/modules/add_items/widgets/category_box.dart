import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/add_items/widgets/category_box_add_items_button.dart';
import 'package:groceries/presentation/modules/add_items/widgets/category_box_divider.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

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
              fontFamily: AppFonts.regular(context),
              color: context.theme.primaryColor,
              fontSize: 14,
            ),
          ).symmetricPadding(
            vertical: context.deviceHeight * 0.0175,
            horizontal: context.deviceWidth * 0.1,
          ),
          const CategoryBoxDivider(),
          const CategoryBoxAddItemsButton(),
          const CategoryBoxDivider(),
        ],
      ),
    );
  }
}
