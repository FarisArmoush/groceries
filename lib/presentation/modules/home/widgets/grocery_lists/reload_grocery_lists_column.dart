import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class ReloadGroceryListsColumn extends StatelessWidget {
  const ReloadGroceryListsColumn({
    required this.error,
    super.key,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          error,
          style: TextStyle(
            color: context.theme.primaryColor,
            fontWeight: AppFontWeights.semiBold,
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        ElevatedButton(
          onPressed: () => context.read<GroceryListsBloc>()
            ..add(
              const GroceryListsEvent.loadGroceryLists(),
            ),
          child: Text(AppTranslations.general.tryAgain),
        ),
      ],
    );
  }
}
