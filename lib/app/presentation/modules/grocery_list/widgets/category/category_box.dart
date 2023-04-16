import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
part '_category_box_divider.dart';
part '_add_items_button.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    required this.category,
    Key? key,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ColoredBox(
      color: Theme.of(context).cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _CategoryBoxDivider(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.0175,
              horizontal: size.width * 0.1,
            ),
            child: Text(
              category,
              style: AppTextStyles.poppinsRegular(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
              ),
            ),
          ),
          const _CategoryBoxDivider(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
            ),
            child: const _AddItemsButton(),
          ),
          const _CategoryBoxDivider(),
        ],
      ),
    );
  }
}
