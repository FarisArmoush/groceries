import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Text(
              AppTranslations.logoutFromApp,
              style: Theme.of(context).dialogTheme.titleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            Text(
              AppTranslations.youSureYouWantToLogout,
              style: Theme.of(context).dialogTheme.contentTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            FilledButton(
              onPressed: () => context
                ..read<AuthBloc>().add(const AppLogoutRequested())
                ..pop(),
              child: Text(
                AppTranslations.yesLogout,
              ),
            ),
            OutlinedButton(
              onPressed: () => context.pop(),
              child: Text(
                AppTranslations.dontLogout,
              ),
            ),
          ],
        );
      },
    );
  }
}
