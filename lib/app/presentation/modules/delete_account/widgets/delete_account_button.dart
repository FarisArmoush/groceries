import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/modules/delete_account/cubit/delete_account_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_loading_indicator.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          width: size.width,
          child: FilledButton(
            onPressed: () => context.read<DeleteAccountCubit>().deleteAccount(),
            child: Text(AppTranslations.yesDeleteAccount),
          ),
        ),
      ),
    );
  }
}
