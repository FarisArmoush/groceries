import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/domain/entities/priority/priority_entity.dart';
import 'package:groceries/presentation/blocs/priorities/priorities_bloc.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/extensions/hex_color.dart';
import 'package:groceries_theme/app_theme.dart';

class ItemPriorityButton extends StatefulWidget {
  const ItemPriorityButton({required this.groceryModel, super.key});

  final GroceryEntity? groceryModel;

  @override
  State<ItemPriorityButton> createState() => _ItemPriorityButtonState();
}

class _ItemPriorityButtonState extends State<ItemPriorityButton> {
  late PriorityEntity? selectedPriority;

  @override
  void initState() {
    if (widget.groceryModel?.priorityId != null) {
      final prioritiesBloc = context.read<PrioritiesBloc>();
      final priorities = prioritiesBloc.state.priorities;
      final itemPriority = priorities.firstWhereOrNull(
        (element) => widget.groceryModel?.priorityId == element.id,
      );
      selectedPriority = itemPriority;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final prioritiesBloc = context.read<PrioritiesBloc>();
    final priorities = prioritiesBloc.state.priorities;

    if (priorities.isEmpty) return const SizedBox.shrink();

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      padding: EdgeInsetsDirectional.zero,
      children: [
        Text(
          'Priority: ',
          style: TextStyle(
            fontWeight: AppFontWeights.regular,
            color: context.theme.primaryColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        SegmentedButton<PriorityEntity>(
          style: SegmentedButton.styleFrom(
            foregroundColor: context.theme.primaryColor,
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsetsDirectional.all(2),
            selectedBackgroundColor: HexColor.fromHex(
              selectedPriority?.color,
            ).withOpacity(0.75),
            selectedForegroundColor: AppColors.white,
            backgroundColor: context.theme.hintColor.withOpacity(0.25),
            side: BorderSide(color: context.theme.primaryColorLight),
          ),
          segments: priorities
              .map(
                (e) => ButtonSegment(
                  value: e,
                  label: Text(e.name ?? ''),
                ),
              )
              .toList(),
          onSelectionChanged: (value) => setState(
            () => selectedPriority = value.first,
          ),
          selected: priorities.isNotEmpty
              ? <PriorityEntity>{selectedPriority ?? priorities.first}
              : {},
        ),
      ],
    );
  }
}
