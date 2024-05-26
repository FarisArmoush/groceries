import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries/presentation/modules/add_items/bloc/add_items_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries_theme/app_theme.dart';

class AddItemsTextField extends StatelessWidget {
  const AddItemsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddItemsBloc, AddItemsState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.when(
          initial: SizedBox.shrink,
          loading: AppLoadingIndicator.new,
          failure: (_) => const SizedBox.shrink(),
          success: () => Material(
            color: CupertinoColors.systemGrey5,
            borderRadius: BorderRadiusDirectional.circular(9),
            child: const AppTextField(
              style: TextStyle(
                fontWeight: AppFontWeights.semiBold,
                color: AppColors.black,
                fontSize: 14,
              ),
              contentPadding: EdgeInsetsDirectional.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              labelStyle: TextStyle(
                fontWeight: AppFontWeights.medium,
                color: AppColors.black,
                fontSize: 14,
              ),
              floatingLabelStyle: TextStyle(
                fontWeight: AppFontWeights.medium,
                color: AppColors.black,
                fontSize: 16,
              ),
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: AppColors.black,
              ),
              labelText: "What're you looking for?",
              disabledBorder: InputBorder.none,
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
            ),
          ),
        );
      },
    ).allPadding(16);
  }
}
