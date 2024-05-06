import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/grocery_list_details/grocery_list_details_entity.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/grocery_list_details/bloc/grocery_list_details_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ClearGroceryListItemsBottomSheet extends StatelessWidget {
  const ClearGroceryListItemsBottomSheet({required this.listModel, super.key});

  final GroceryListDetailsEntity? listModel;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GroceryListDetailsBloc, GroceryListDetailsState>(
      listener: (context, state) {
        state.clearStatus.whenOrNull(
          success: () => context.pop(),
        );
      },
      builder: (context, state) {
        return state.clearStatus.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: AppLoadingIndicator.new,
          initial: () => ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: AppPaddings.bottomSheet(context),
            children: [
              Text(
                Translations.groceryLists.clearGroceriesFromList,
                style: context.theme.dialogTheme.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: context.deviceHeight * 0.03,
              ),
              FilledButton(
                onPressed: () => context.read<GroceryListDetailsBloc>().add(
                      GroceryListDetailsEvent.clear(uid: listModel?.id),
                    ),
                child: Text(Translations.groceryLists.yesClearGroceries),
              ),
              OutlinedButton(
                onPressed: () => context.pop(),
                child: Text(Translations.groceryLists.noDontClearGroceries),
              ),
            ],
          ),
        );
      },
    );
  }
}
