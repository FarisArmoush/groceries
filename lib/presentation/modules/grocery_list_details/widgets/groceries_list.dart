import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/groceries_box_header.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/groceries_box_list.dart';

class GroceriesList extends StatelessWidget {
  const GroceriesList({
    required this.groceries,
    this.showHeader = true,
    super.key,
  });

  final List<GroceryEntity?>? groceries;
  final bool showHeader;

  @override
  Widget build(BuildContext context) {
    final itemsGroupedByCategory = groupBy(
      groceries ?? <GroceryEntity>[],
      (GroceryEntity? entity) => entity?.categoryId,
    );
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemsGroupedByCategory.length,
      itemBuilder: (context, index) {
        final category = itemsGroupedByCategory.keys.elementAt(index);
        final categoryItems = itemsGroupedByCategory[category];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: showHeader,
              child: GroceriesBoxHeader(
                category: category?.tr() ?? '',
                assetPath: Assets.icons.alertTriangle.path,
              ),
            ),
            GroceriesBoxList(
              list: categoryItems ?? [],
              showPriority: true,
            ),
          ],
        );
      },
      separatorBuilder: (context, _) {
        return SizedBox(
          height: context.deviceHeight * 0.02,
        );
      },
    );
  }
}
