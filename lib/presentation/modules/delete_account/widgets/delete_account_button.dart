import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/delete_account/bloc/delete_account_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteAccountBloc, DeleteAccountState>(
      listener: (context, state) {
        state.status.when(
          initial: () {},
          success: () => context.pop(),
          failure: (error) => context.pop(),
          loading: () {
            showDialog<AppLoadingIndicator>(
              context: context,
              builder: (context) => const AppLoadingIndicator(),
            );
            developer.log('DeleteAccountLoading');
          },
        );
      },
      child: FilledButton(
        onPressed: () => context.read<DeleteAccountBloc>()
          ..add(
            const DeleteAccountEvent.deleteAccount(),
          ),
        child: Text(AppTranslations.deleteAccount.yesDeleteAccount),
      ).bottomButtonSpacing(),
    );
  }
}
