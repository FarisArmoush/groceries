import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries/presentation/extensions/widgets_as_extensions.dart';
import 'package:groceries/presentation/modules/delete_account/bloc/delete_account_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteAccountBloc, DeleteAccountState>(
      listener: (context, state) => state.status.whenOrNull(
        success: () => context.pushReplacementNamed(
          '/${AppRoute.welcome.named}',
        ),
        failure: (error) {
          context.pop();
          return ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              AppSnackBars.error(error: error),
            );
        },
        loading: () => showDialog<AppLoadingIndicator>(
          context: context,
          builder: (context) => const AppLoadingIndicator(),
        ),
      ),
      child: FilledButton(
        onPressed: () => context.read<DeleteAccountBloc>()
          ..add(
            const DeleteAccountEvent.deleteAccount(),
          ),
        child: Text(Translations.deleteAccount.yesDeleteAccount),
      ).bottomButtonSpacing(),
    );
  }
}
