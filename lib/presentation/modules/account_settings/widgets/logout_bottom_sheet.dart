import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogoutBloc, LogoutState>(
      builder: (context, state) {
        return state.status.maybeWhen(
          loading: AppLoadingIndicator.new,
          orElse: () {
            return ListView(
              padding: AppPaddings.bottomSheet(context),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Text(
                  AppTranslations.accountSettings.logoutBottomSheetHeader,
                  style: context.theme.dialogTheme.titleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: context.deviceHeight * 0.02,
                ),
                Text(
                  AppTranslations.accountSettings.logoutBottomSheetBody,
                  style: context.theme.dialogTheme.contentTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: context.deviceHeight * 0.01,
                ),
                FilledButton(
                  onPressed: () {
                    context.read<LogoutBloc>().add(const LogoutEvent.logout());
                  },
                  child: Text(AppTranslations.accountSettings.yesLogout),
                ),
                OutlinedButton(
                  onPressed: () => context.pop(),
                  child: Text(AppTranslations.accountSettings.dontLogout),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
