import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryItemCardIcon extends StatelessWidget {
  const GroceryItemCardIcon({required this.groceryModel, super.key});

  final GroceryModel groceryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(8),
      decoration: BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: SvgPicture.asset(
        Assets.icons.beef.path,
        colorFilter: ColorFilter.mode(
          context.theme.colorScheme.secondary,
          BlendMode.srcIn,
        ),
        height: context.deviceHeight * 0.03,
      ),
    );
  }
}
