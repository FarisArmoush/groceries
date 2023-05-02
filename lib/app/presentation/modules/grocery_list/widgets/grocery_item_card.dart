import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/data/models/grocery_model.dart';
import 'package:groceries/gen/assets.gen.dart';

class GroceryItemCard extends StatelessWidget {
  const GroceryItemCard({
    required this.groceryModel,
    Key? key,
  }) : super(key: key);
  final GroceryModel groceryModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        groceryModel.name,
        style: AppTextStyles.poppinsRegular(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        groceryModel.category,
        style: AppTextStyles.poppinsLight(
          color: Theme.of(context).hintColor,
          fontSize: 14,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          Assets.svg.icPlus,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
