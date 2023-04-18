import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/data/models/grocery_list_model.dart';
import 'package:groceries/app/presentation/widgets/cached_image.dart';
import 'package:groceries/gen/assets.gen.dart';

class GroceryListSecondaryCard extends StatelessWidget {
  const GroceryListSecondaryCard({
    required this.listModel,
    Key? key,
  }) : super(key: key);

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedImage(
        imageUrl: listModel.imageUrl,
      ),
      trailing: SvgPicture.asset(
        Assets.svg.icListPlus,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        listModel.name,
        style: AppTextStyles.poppinsRegular(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
