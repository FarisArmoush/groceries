import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/delete_account/cubit/delete_account_cubit.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteAccountCubit, DeleteAccountState>(
      listener: (context, state) {
        if (state is DeleteAccountLoading) {
          showDialog<AppLoadingIndicator>(
            context: context,
            builder: (context) => const AppLoadingIndicator(),
          );
          dev.log('DeleteAccountLoading');
        }
        if (state is AccountDeleteSuccess) {
          context.pop();
          dev.log('AccountDeleteSuccess');
        }
        if (state is AccountDeleteFailed) {
          context.pop();
          dev.log('AccountDeleteFailed');
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        child: SizedBox(
          width: context.deviceWidth,
          child: FilledButton(
            onPressed: () => context.read<DeleteAccountCubit>().deleteAccount(),
            child: Text(AppTranslations.yesDeleteAccount),
          ),
        ),
      ),
    );
  }
}
