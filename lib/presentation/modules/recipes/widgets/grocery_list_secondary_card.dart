import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class GroceryListSecondaryCard extends StatelessWidget {
  const GroceryListSecondaryCard({
    required this.listModel,
    super.key,
  });

  final GroceryListModel listModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedImage(
        imageUrl: listModel.imageUrl,
      ),
      trailing: SvgPicture.asset(
        Assets.svg.icListPlus.path,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(listModel.name),
    );
  }
}
