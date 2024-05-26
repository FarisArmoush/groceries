import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/presentation/blocs/priorities/priorities_bloc.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_item_details_bottom_sheet.dart';
import 'package:groceries_theme/app_theme.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class GroceryItemTile extends StatelessWidget {
  const GroceryItemTile({
    required this.item,
    required this.showPriority,
    super.key,
  });

  final GroceryEntity? item;
  final bool showPriority;

  @override
  Widget build(BuildContext context) {
    final prioritiesBloc = context.read<PrioritiesBloc>();
    final priorities = prioritiesBloc.state.priorities;
    final itemPriority = priorities.firstWhereOrNull(
      (element) => item?.priorityId == element.id,
    );
    final notesIsEmpty = item?.notes?.isEmpty ?? false;
    final notesIsNull = item?.notes == null;
    final iconButton = IconButton(
      onPressed: () {},
      icon: _buildIcon(context, item),
    );
    return ListTile(
      tileColor: AppColors.transparent,
      title: Text(item?.name ?? ''),
      subtitle: !(notesIsNull || notesIsEmpty) ? Text(item?.notes ?? '') : null,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (itemPriority != null && showPriority) ...[
            Text(itemPriority.name ?? ''),
            const SizedBox(width: 4),
          ],
          iconButton,
        ],
      ),
      onTap: () => _showBottomSheet(context, item),
    );
  }

  Widget _buildIcon(BuildContext context, GroceryEntity? item) {
    final isDone = item?.isDone ?? false;
    if (isDone) {
      return Assets.icons.doubleCheck.svg(
        colorFilter: const ColorFilter.mode(
          Colors.green,
          BlendMode.srcIn,
        ),
      );
    } else {
      return Assets.icons.check.svg(
        colorFilter: ColorFilter.mode(
          context.theme.primaryColor,
          BlendMode.srcIn,
        ),
      );
    }
  }

  void _showBottomSheet(BuildContext context, GroceryEntity? item) {
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
