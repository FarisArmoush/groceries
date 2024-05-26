import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogoutBloc, LogoutState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.maybeWhen(
          loading: () => const AppLoadingIndicator.linear(),
          orElse: () {
            return ListView(
              padding: AppPaddings.bottomSheet(context),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Text(
                  Translations.accountSettings.logoutBottomSheetBody,
                  style: context.theme.dialogTheme.titleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: context.deviceHeight * 0.02,
                ),
                FilledButton(
                  onPressed: () {
                    context.read<LogoutBloc>().add(const LogoutEvent.logout());
                  },
                  child: Text(Translations.accountSettings.yesLogout),
                ),
                OutlinedButton(
                  onPressed: () => context.pop(),
                  child: Text(Translations.accountSettings.dontLogout),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
