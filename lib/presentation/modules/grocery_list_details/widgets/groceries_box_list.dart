import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_item_details_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class GroceriesBoxList extends StatelessWidget {
  const GroceriesBoxList({
    required this.list,
    super.key,
  });
  final List<GroceryModel?>? list;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.cardColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: ListTile.divideTiles(
          color: context.theme.hintColor.withOpacity(0.75),
          context: context,
          tiles: list?.map(
                (GroceryModel? item) => ListTile(
                  tileColor: AppColors.transparent,
                  title: Text(item?.name ?? ''),
                  subtitle:
                      item?.notes == null || (item?.notes?.isEmpty ?? false)
                          ? null
                          : Text(item?.notes ?? ''),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: item?.isDone ?? false
                        ? Assets.icons.doubleCheck.svg(
                            colorFilter: const ColorFilter.mode(
                              Colors.green,
                              BlendMode.srcIn,
                            ),
                          )
                        : Assets.icons.check.svg(
                            colorFilter: ColorFilter.mode(
                              context.theme.primaryColor,
                              BlendMode.srcIn,
                            ),
                          ),
                  ),
                  onTap: () => showModalBottomSheet<void>(
                    context: context,
                    elevation: 0,
                    showDragHandle: true,
                    useSafeArea: true,
                    isScrollControlled: true,
                    builder: (context) => GroceryItemDetailsBottomSheet(
                      groceryModel: item,
                    ),
                  ),
                ),
              ) ??
              [],
        ).toList(),
      ),
    );
  }
}
