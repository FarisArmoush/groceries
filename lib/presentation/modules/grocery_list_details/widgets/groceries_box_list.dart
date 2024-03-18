import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_item_details_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

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
                (item) {
                  final notesIsEmpty = item?.notes?.isEmpty ?? false;
                  final notesIsNull = item?.notes == null;
                  final isDone = item?.isDone ?? false;
                  return ListTile(
                    tileColor: AppColors.transparent,
                    title: Text(item?.name ?? ''),
                    subtitle: notesIsNull || notesIsEmpty
                        ? null
                        : Text(item?.notes ?? ''),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: isDone
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
                    onTap: () => _showBottomSheet(context, item),
                  );
                },
              ) ??
              [],
        ).toList(),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, GroceryModel? item) {
    if (item == null) return;
    WoltModalSheet.show<void>(
      context: context,
      useSafeArea: false,
      useRootNavigator: true,
      pageListBuilder: (context) => [
        SliverWoltModalSheetPage(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          mainContentSlivers: [
            GroceryItemDetailsBottomSheet(
              groceryModel: item,
            ),
          ],
        ),
      ],
    );
  }
}
